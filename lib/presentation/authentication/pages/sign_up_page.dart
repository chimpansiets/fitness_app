import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/domain/core/failures.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/presentation/authentication/components/auth_icon.dart';
import 'package:fitness_app/presentation/authentication/components/login_form_field.dart';
import 'package:fitness_app/presentation/core/components/primary_button.dart';
import 'package:fitness_app/presentation/core/templates/sign_form_template.dart';
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
                  ),
                ).show(context);
              }
            },
            (_) {},
          );
        },
      );
    }, builder: (context, state) {
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
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: LoginFormField(
                    hintText: 'First name',
                    icon: Icons.person,
                    firstNameController: firstNameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: LoginFormField(
                    hintText: 'Last name',
                    icon: Icons.person,
                    firstNameController: lastNameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: LoginFormField(
                    hintText: 'Email',
                    icon: Icons.mail,
                    firstNameController: emailController,
                    onChanged: (value) {
                      getIt<AuthenticationCubit>().emailChanged(value);
                    },
                    validator: state.email.value.fold(
                        (l) => (_) => 'Invalid Email', (r) => (_) => null),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
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

            authCubit.registerEmailAndPasswordUseCase(
                emailController.text, passwordController.text);
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
