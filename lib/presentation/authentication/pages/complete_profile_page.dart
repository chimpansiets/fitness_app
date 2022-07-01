import 'package:fitness_app/presentation/authentication/components/auth_form_header.dart';
import 'package:fitness_app/presentation/authentication/components/complete_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/woman-working-out.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
            child: CompleteProfileHeader(
              firstText: 'Let\'s complete your profile',
              secondText: 'It will help us get to know more about you!',
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
