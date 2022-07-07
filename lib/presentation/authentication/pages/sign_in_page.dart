import 'package:another_flushbar/flushbar_helper.dart';
import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/authentication/components/auth_form_header.dart';
import 'package:fitness_app/presentation/authentication/components/auth_icon.dart';
import 'package:fitness_app/presentation/authentication/components/login_form_field.dart';
import 'package:fitness_app/presentation/authentication/pages/sign_up_page.dart';
import 'package:fitness_app/presentation/core/components/primary_button.dart';
import 'package:fitness_app/presentation/core/templates/auth_form_template.dart';
import 'package:fitness_app/theme/theme.dart';
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
            (_) {},
          );
        },
      );
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
                controller: emailController,
                onChanged: (email) {
                  getIt<AuthenticationCubit>().emailChanged(email);
                },
                validator: state.email.value.fold(
                  (l) => (_) => 'Invalid email',
                  (r) => (_) => null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: LoginFormField(
                  icon: Icons.lock,
                  hintText: 'Password',
                  controller: passwordController,
                  hideText: true,
                  onChanged: (password) {
                    getIt<AuthenticationCubit>().passwordChanged(password);
                  },
                ),
              )
            ],
          ),
        ),
        buttonSection: PrimaryButton(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9DCEFF),
              Color(0xFF92A3FD),
            ],
          ),
          onPressed: () {
            getIt<AuthenticationCubit>().loginEmailAndPassword(
              emailController.text,
              passwordController.text,
            );
          },
          child: const Text('Login'),
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
                    'Don\'t have an account yet?',
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
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text(
                      'Register',
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
