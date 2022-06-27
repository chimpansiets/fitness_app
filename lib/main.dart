import 'package:fitness_app/presentation/onboarding/pages/welcome_page.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (context) => const WelcomeScreen(),
      },
      theme: ThemeData(
        textTheme: FitnessTheme.poppins,
      ),
    );
  }
}
