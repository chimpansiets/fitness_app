import 'package:fitness_app/presentation/core/components/primary_button.dart';
import 'package:fitness_app/presentation/onboarding/components/fitnest_logo.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FitnestLogo(),
            PrimaryButton(
              text: 'Get started',
            ),
          ],
        ),
      ),
    );
  }
}
