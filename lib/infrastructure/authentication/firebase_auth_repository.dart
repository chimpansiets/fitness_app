import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/domain/authentication/auth_failure.dart';
import 'package:fitness_app/domain/authentication/i_auth_repository.dart';
import 'package:fitness_app/domain/authentication/value_objects.dart';
import 'package:flutter/services.dart';

class FirebaseAuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(
    this._firebaseAuth,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailAddressString = email.value.getOrElse(() => 'INVALID EMAIL');
    final passwordString = password.value.getOrElse(() => 'INVALID PASSWORD');

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressString,
            password: passwordString,
          )
          .then(
            (value) => right(unit),
          );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
              email: email.emailString, password: password.passwordString)
          .then(
            (value) => right(unit),
          );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmail());
      } else if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.wrongPassword());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
