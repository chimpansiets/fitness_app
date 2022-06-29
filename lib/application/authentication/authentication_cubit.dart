import 'package:firebase_auth/firebase_auth.dart';
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
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    UserCredential user = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
