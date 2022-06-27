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
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: const FitnestLogo(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3),
              child: PrimaryButton(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF9DCEFF),
                    Color(0xFF92A3FD),
                  ],
                ),
                width: 200,
                height: 80,
                onPressed: () {},
                child: const Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
