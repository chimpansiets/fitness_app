import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.noInternet() = NoInternet;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.wrongPassword() = WrongPassword;
}
