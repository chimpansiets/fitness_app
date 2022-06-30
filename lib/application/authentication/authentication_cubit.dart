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

  void emailChanged(String email) {
    emit(
      state.copyWith(
        email: EmailAddress(emailString: email),
        authFailureOrSuccessOption: none(),
      ),
    );
    print("Email: ${state.email.value}");
  }

  void passwordChanged(String password) {
    emit(
      state.copyWith(
        password: Password(passwordString: password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void registerEmailAndPasswordUseCase(String email, String password) async {
    FirebaseAuthRepository repository = getIt<FirebaseAuthRepository>();

    emit(
      state.copyWith(
        email: EmailAddress(emailString: email),
        password: Password(passwordString: password),
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

    print('${state.email.value}, ${state.password.value}');
    print(state.authFailureOrSuccessOption);
  }
}
