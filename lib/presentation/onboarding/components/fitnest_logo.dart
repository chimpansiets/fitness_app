import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class FitnestLogo extends StatelessWidget {
  const FitnestLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Fitnest', style: FitnessTheme.poppins.headline1),
              TextSpan(
                text: 'X',
                style: FitnessTheme.poppins.headline1!.copyWith(
                  foreground: Paint()
                    ..shader = FitnessTheme.logoLinear
                        .createShader(const Rect.fromLTWH(0, 0, 50, 50)),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Everybody Can Train',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: FitnessTheme.gray1,
          ),
        ),
      ],
    );
  }
}
