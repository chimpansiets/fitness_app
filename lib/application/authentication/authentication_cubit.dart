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

  void registerEmailAndPasswordUseCase(String email, String password) async {
    // TODO: Send the creation to a repository and catch errors from firebase service there.

    FirebaseAuthRepository repository = getIt<FirebaseAuthRepository>();

    if (state.email.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(
          email: EmailAddress(emailString: email),
          password: Password(passwordString: password),
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
          authFailureOrSuccessOption: some(failureOrSuccess),
        ),
      );
    }

    print(state.authFailureOrSuccessOption);
  }
}
