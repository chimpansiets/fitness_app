import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/authentication/components/auth_form_header.dart';
import 'package:fitness_app/presentation/authentication/components/login_form_field.dart';
import 'package:fitness_app/presentation/core/templates/auth_form_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
      //TODO
    }, builder: (context, state) {
      return AuthFormTemplate(
        headerSection: const AuthPageHeader(
          firstText: 'Hey there,',
          secondText: 'Welcome Back',
        ),
        formSection: Form(
          child: Column(
            children: [
              LoginFormField(
                icon: Icons.email,
                hintText: 'Email',
                firstNameController: emailController,
                onChanged: (email) {
                  getIt<AuthenticationCubit>().emailChanged(email);
                },
                validator: state.email.value.fold(
                  (l) => (_) => 'Invalid email',
                  (r) => (_) => null,
                ),
              ),
              LoginFormField(
                icon: Icons.lock,
                hintText: 'Password',
                firstNameController: passwordController,
                hideText: true,
                onChanged: (password) {
                  getIt<AuthenticationCubit>().passwordChanged(password);
                },
              )
            ],
          ),
        ),
        buttonSection: Container(),
        optionsSection: Container(),
      );
    });
  }
}
