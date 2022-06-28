import 'package:fitness_app/application/onboarding/onboarding_cubit.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/onboarding/pages/welcome_page.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OnboardingCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: 'onboarding',
        routes: {
          'onboarding': (context) => const WelcomeScreen(),
        },
        theme: ThemeData(
          textTheme: FitnessTheme.poppins,
        ),
      ),
    );
  }
}
