part of 'authentication_cubit.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState() = _AuthenticationState;

  factory AuthenticationState.initial() => const AuthenticationState();
}
