import 'package:flutter/material.dart';

class OnboardingTemplate extends StatelessWidget {
  final Widget topSection;
  final Widget middleSection;
  final Widget bottomSection;
  const OnboardingTemplate({
    Key? key,
    required this.topSection,
    required this.middleSection,
    required this.bottomSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topSection,
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: middleSection,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.65, top: 10),
            child: bottomSection,
          ),
        ],
      ),
    );
  }
}
