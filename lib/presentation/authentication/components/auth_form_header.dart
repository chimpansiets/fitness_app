import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class AuthPageHeader extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double firstFontSize;
  final double secondFontSize;

  const AuthPageHeader({
    Key? key,
    required this.firstText,
    this.firstFontSize = 16,
    required this.secondText,
    this.secondFontSize = 20,
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
            fontSize: firstFontSize,
          ),
        ),
        Text(
          secondText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: secondFontSize,
            color: FitnessTheme.black,
          ),
        ),
      ],
    );
  }
}
