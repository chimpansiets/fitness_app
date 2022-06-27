import 'package:flutter/material.dart';

class OnboardingTemplate extends StatelessWidget {
  final Widget topSection;
  final Widget middleSection;
  final Function()? onPressed;

  const OnboardingTemplate({
    Key? key,
    required this.topSection,
    required this.middleSection,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topSection,
          middleSection,
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
