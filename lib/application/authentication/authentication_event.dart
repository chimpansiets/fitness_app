part of 'authentication_cubit.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.registerEmailAndPasswordUseCase(
      String email, String password) = RegisterEmailAndPasswordUseCase;
}
