part of 'authentication_cubit.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.registerEmailAndPasswordUseCase(
      String email, String password) = RegisterEmailAndPasswordUseCase;
}
