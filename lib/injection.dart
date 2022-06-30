import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/application/onboarding/onboarding_cubit.dart';
import 'package:fitness_app/infrastructure/authentication/firebase_auth_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<OnboardingCubit>(OnboardingCubit());
  getIt.registerSingleton<AuthenticationCubit>(AuthenticationCubit());
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<FirebaseAuthRepository>(
      FirebaseAuthRepository(getIt<FirebaseAuth>()));
}
