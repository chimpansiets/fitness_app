import 'package:fitness_app/application/onboarding/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<OnboardingCubit>(OnboardingCubit());
}
