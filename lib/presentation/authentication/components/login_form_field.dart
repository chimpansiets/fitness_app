import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.firstNameController,
    this.hideText = false,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final bool hideText;
  final TextEditingController firstNameController;
  final IconData icon;
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: hideText,
      decoration: InputDecoration(
        filled: true,
        fillColor: FitnessTheme.formFillColor,
        prefixIcon: Icon(
          icon,
          color: FitnessTheme.gray1,
        ),
        // icon: Icon(
        //   icon,
        //   color: FitnessTheme.gray1,
        // ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12, color: FitnessTheme.gray2),
      ),
      controller: firstNameController,
    );
  }
}
