import 'package:fitness_app/application/authentication/authentication_cubit.dart';
import 'package:fitness_app/injection.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AuthIcons {
  google,
  facebook,
}

class AuthIcon extends StatelessWidget {
  final AuthIcons type;

  AuthIcon(AuthIcons this.type, {Key? key}) : super(key: key);

  final Map<AuthIcons, Widget> logos = {
    AuthIcons.google: Image.asset("assets/images/google-logo.png"),
    AuthIcons.facebook: Image.asset("assets/images/facebook-logo.png"),
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          // color: Colors.orange.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: FitnessTheme.gray3),
        ),
        child: logos[type],
      ),
      onTap: () {
        // TODO: Add logic using cubit's
        AuthenticationCubit authCubit = getIt<AuthenticationCubit>();
        if (type == AuthIcons.google) {
          authCubit.registerWithGoogle();
        } else {
          authCubit.registerWithFacebook();
        }
      },
    );
  }
}
