import 'package:fitness_app/presentation/onboarding/templates/onboarding_template.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingFirst extends StatelessWidget {
  OnboardingFirst({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingTemplate(
      topSection: SvgPicture.asset(
        'assets/images/woman-holding-phone.svg',
        width: MediaQuery.of(context).size.width,
      ),
      middleSection: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 50.0,
        ),
        child: Column(
          children: [
            Text(
              'Track Your Goal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                height: 2,
                color: FitnessTheme.black,
              ),
            ),
            Text(
              'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
              style: TextStyle(
                fontSize: 14,
                color: FitnessTheme.gray1,
              ),
            ),
          ],
        ),
      ),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => OnboardingSecond()),
        // );
      },
    );
  }
}
