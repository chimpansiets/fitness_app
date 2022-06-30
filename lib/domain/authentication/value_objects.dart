import 'package:dartz/dartz.dart';
import 'package:fitness_app/domain/core/failures.dart';
import 'package:fitness_app/domain/core/value_objects.dart';
import 'package:fitness_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final String emailString;

  const EmailAddress({required this.emailString});

  @override
  Either<ValueFailure<String>, String> get value {
    return validateEmailAddress(emailString);
  }
}

class Password extends ValueObject<String> {
  final String passwordString;

  const Password({required this.passwordString});

  @override
  Either<ValueFailure<String>, String> get value {
    return validatePassword(passwordString);
  }
}
