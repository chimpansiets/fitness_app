import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/application/onboarding/onboarding_cubit.dart';
import 'package:fitness_app/firebase_options.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/authentication/pages/complete_profile_page.dart';
import 'package:fitness_app/presentation/onboarding/pages/welcome_page.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        BlocProvider(
          create: (context) => getIt<AuthenticationCubit>(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: 'completeProfile',
        routes: {
          'onboarding': (context) => const WelcomeScreen(),
          'completeProfile': (context) => CompleteProfilePage(),
        },
        theme: ThemeData(
          textTheme: FitnessTheme.poppins,
        ),
      ),
    );
  }
}
