import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.firstNameController,
    this.hideText = false,
    this.validator,
  }) : super(key: key);

  final bool hideText;
  final TextEditingController firstNameController;
  final IconData icon;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: hideText,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: FitnessTheme.gray1,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12, color: FitnessTheme.gray2),
      ),
      controller: firstNameController,
    );
  }
}
