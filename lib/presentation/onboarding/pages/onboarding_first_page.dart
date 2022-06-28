import 'package:fitness_app/application/onboarding/onboarding_cubit.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/core/components/next_progress_button.dart';
import 'package:fitness_app/presentation/onboarding/templates/onboarding_template.dart';
import 'package:fitness_app/presentation/sign_up/pages/sign_up_page.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingFirst extends StatelessWidget {
  OnboardingFirst({
    Key? key,
  }) : super(key: key);

  String header = 'Track Your Goals';
  String description =
      'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        switch (state.page) {
          case 1:
            header = 'Track Your Goals';
            description =
                'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals';
            break;
          case 2:
            header = 'Burn Fat';
            description =
                'Let\'s keep burning, to achieve yours goals, it only hurts temporarily';
            break;
          case 3:
            header = 'Eat Healthy';
            description =
                'Let\'s start a healthy lifestyle with us, we can determine your diet every day. Healthy eating is fun';
            break;
          case 4:
            header = 'Improve Sleep  Quality';
            description =
                'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning';
            break;
        }
      },
      builder: (context, state) {
        OnboardingCubit onboardingCubit = getIt<OnboardingCubit>();

        return OnboardingTemplate(
          topSection: SvgPicture.asset(
            'assets/images/woman-holding-phone.svg',
            width: MediaQuery.of(context).size.width,
          ),
          middleSection: Column(
            children: [
              Text(
                header,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  height: 2,
                  color: FitnessTheme.black,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: FitnessTheme.gray1,
                ),
              ),
            ],
          ),
          bottomSection: NextProgressButton(
            onPressed: () {
              onboardingCubit.incrementProgress();

              if (onboardingCubit.state.finished == true) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              }
            },
            progress: onboardingCubit.state.progress,
          ),
        );
      },
    );
  }
}
