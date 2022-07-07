import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/domain/core/failures.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/authentication/components/auth_form_header.dart';
import 'package:fitness_app/presentation/authentication/components/auth_icon.dart';
import 'package:fitness_app/presentation/authentication/components/login_form_field.dart';
import 'package:fitness_app/presentation/authentication/pages/complete_profile_page.dart';
import 'package:fitness_app/presentation/authentication/pages/sign_in_page.dart';
import 'package:fitness_app/presentation/core/components/primary_button.dart';
import 'package:fitness_app/presentation/core/templates/auth_form_template.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        () {},
        (either) {
          either.fold(
            (failure) {
              if (state.showErrorMessages == true) {
                FlushbarHelper.createError(
                  message: failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server Error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    noInternet: (_) => 'No internet',
                    wrongPassword: (_) => 'Wrong password',
                    invalidEmail: (_) => 'Invalid email',
                    userDisabled: (_) => 'User disabled',
                    userNotFound: (_) => 'User not found',
                  ),
                ).show(context);
              }
            },
            (success) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CompleteProfilePage()),
              );
            },
          );
        },
      );
    }, builder: (context, state) {
      return AuthFormTemplate(
        headerSection: const AuthPageHeader(
          firstText: 'Hey there,',
          secondText: 'Create an Account',
        ),
        formSection: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: LoginFormField(
                  hintText: 'First name',
                  icon: Icons.person,
                  controller: firstNameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: LoginFormField(
                  hintText: 'Last name',
                  icon: Icons.person,
                  controller: lastNameController,
                  onChanged: (value) {
                    getIt<AuthenticationCubit>().nameChanged(value);
                  },
                  validator: state.name.value.fold(
                    (l) => (_) => 'Khuylo',
                    (r) => (_) => null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: LoginFormField(
                  hintText: 'Email',
                  icon: Icons.mail,
                  controller: emailController,
                  onChanged: (value) {
                    getIt<AuthenticationCubit>().emailChanged(value);
                  },
                  validator: state.email.value
                      .fold((l) => (_) => 'Invalid email', (r) => (_) => null),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: LoginFormField(
                  hideText: true,
                  hintText: 'Password',
                  icon: Icons.lock,
                  controller: passwordController,
                  onChanged: (value) {
                    getIt<AuthenticationCubit>().passwordChanged(value);
                  },
                  validator: state.password.value.fold(
                      (l) => (_) => 'Password too short', (r) => (_) => null),
                ),
              ),
            ],
          ),
        ),
        buttonSection: PrimaryButton(
          height: 80,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9DCEFF),
              Color(0xFF92A3FD),
            ],
          ),
          onPressed: () {
            AuthenticationCubit authCubit =
                BlocProvider.of<AuthenticationCubit>(context);

            authCubit.registerEmailAndPassword(
                emailController.text, passwordController.text);

            // TODO: Route to profile completion process on success
          },
          child: const Text('Register'),
        ),
        optionsSection: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthIcon(AuthIcons.google),
                  const SizedBox(width: 40),
                  AuthIcon(AuthIcons.facebook),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: FitnessTheme.black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: Route to login page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        foreground: Paint()
                          ..shader = FitnessTheme.purpleLinear.createShader(
                            const Rect.fromLTWH(0, 0, 25, 25),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
