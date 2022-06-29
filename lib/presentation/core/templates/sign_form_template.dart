import 'package:flutter/material.dart';

class SignFormTemplate extends StatelessWidget {
  final Widget headerSection;
  final Widget formSection;
  final Widget buttonSection;
  final Widget optionsSection;

  const SignFormTemplate({
    Key? key,
    required this.headerSection,
    required this.formSection,
    required this.buttonSection,
    required this.optionsSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12),
            width: screenSize.width,
            height: screenSize.height * 0.15,
            child: headerSection,
          ),
          Container(
            color: Colors.orange.withOpacity(0.2),
            width: screenSize.width,
            height: screenSize.height * 0.5,
            child: formSection,
          ),
          // buttonSection,
          // Divider(),
          // optionsSection,
        ],
      ),
    );
  }
}
