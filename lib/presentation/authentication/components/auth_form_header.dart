import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class AuthPageHeader extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AuthPageHeader({
    Key? key,
    required this.firstText,
    required this.secondText,
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
            fontSize: 16,
          ),
        ),
        Text(
          secondText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: FitnessTheme.black,
          ),
        ),
      ],
    );
  }
}
