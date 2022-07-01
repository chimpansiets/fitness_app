import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CompleteProfileHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double firstFontSize;
  final double secondFontSize;

  const CompleteProfileHeader({
    Key? key,
    required this.firstText,
    this.firstFontSize = 16,
    required this.secondText,
    this.secondFontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            color: FitnessTheme.black,
            fontWeight: FontWeight.bold,
            fontSize: firstFontSize,
          ),
        ),
        Text(
          secondText,
          style: TextStyle(
            fontSize: secondFontSize,
            color: FitnessTheme.gray1,
          ),
        ),
      ],
    );
  }
}
