import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/domain/authentication/auth_failure.dart';
import 'package:fitness_app/domain/authentication/value_objects.dart';
import 'package:fitness_app/infrastructure/authentication/firebase_auth_repository.dart';
import 'package:fitness_app/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed/builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.initial());

  void nameChanged(String name) {
    emit(
      state.copyWith(
        name: Name(name),
      ),
    );
  }

  void emailChanged(String email) {
    emit(
      state.copyWith(
        email: EmailAddress(email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void passwordChanged(String password) {
    emit(
      state.copyWith(
        password: Password(password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void registerWithGoogle() {}

  void registerWithFacebook() {}

  void registerEmailAndPasswordUseCase(String email, String password) async {
    FirebaseAuthRepository repository = getIt<FirebaseAuthRepository>();

    emit(
      state.copyWith(
        email: EmailAddress(email),
        password: Password(password),
        showErrorMessages: false,
      ),
    );

    if (state.email.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(
          isSubmitting: true,
        ),
      );
      Either<AuthFailure, Unit> failureOrSuccess =
          await repository.registerEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    } else {
      emit(
        state.copyWith(
          showErrorMessages: true,
        ),
      );
    }
  }
}
