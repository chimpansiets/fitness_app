import 'package:fitness_app/presentation/core/templates/sign_form_template.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignFormTemplate(
      headerSection: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hey there,',
            style: TextStyle(
              color: FitnessTheme.black,
              fontSize: 16,
            ),
          ),
          Text(
            'Create an Account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: FitnessTheme.black,
            ),
          ),
        ],
      ),
      formSection: Column(),
      buttonSection: Container(),
      optionsSection: Container(),
    );
  }
}
