import 'package:fitness_app/presentation/core/components/next_progress_button.dart';
import 'package:fitness_app/presentation/onboarding/templates/onboarding_template.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingSecond extends StatelessWidget {
  OnboardingSecond({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return OnboardingTemplate(
      topSection: SvgPicture.asset(
        'assets/images/woman-holding-phone.svg',
        width: MediaQuery.of(context).size.width,
      ),
      middleSection: Column(
        children: [
          Text(
            'Burn Fat',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              height: 2,
              color: FitnessTheme.black,
            ),
          ),
          Text(
            'Let\'s keep burning, to achieve yours goals, it only hurts temporarily',
            style: TextStyle(
              fontSize: 14,
              color: FitnessTheme.gray1,
            ),
          ),
        ],
      ),
      bottomSection: NextProgressButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingSecond()),
          );
        },
        progress: 0.5,
      ),
    );
  }
}
