import 'package:fitness_app/presentation/core/templates/sign_form_template.dart';
import 'package:fitness_app/presentation/sign_up/components/login_form_field.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
      formSection: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: LoginFormField(
                hintText: 'First name',
                icon: Icons.person,
                firstNameController: firstNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: LoginFormField(
                hintText: 'Last name',
                icon: Icons.person,
                firstNameController: lastNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: LoginFormField(
                hintText: 'Email',
                icon: Icons.mail,
                firstNameController: emailController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: LoginFormField(
                hideText: true,
                hintText: 'Password',
                icon: Icons.lock,
                firstNameController: passwordController,
              ),
            ),
          ],
        ),
      ),
      buttonSection: Container(),
      optionsSection: Container(),
    );
  }
}
