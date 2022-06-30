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
            height: screenSize.height * 0.55,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: formSection,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: buttonSection,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: optionsSection,
          ),
        ],
      ),
    );
  }
}
