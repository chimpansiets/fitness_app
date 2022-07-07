import 'package:fitness_app/presentation/authentication/components/complete_profile_form_field.dart';
import 'package:fitness_app/presentation/authentication/components/complete_profile_header.dart';
import 'package:fitness_app/presentation/core/components/primary_button.dart';
import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CompleteProfilePage extends StatelessWidget {
  CompleteProfilePage({Key? key}) : super(key: key);

  TextEditingController birthController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              children: [
                const CompleteProfileFormField(
                  type: ProfileFormField.gender,
                  icon: Icons.people,
                  hintText: 'Choose Gender',
                ),
                CompleteProfileFormField(
                  type: ProfileFormField.date,
                  icon: Icons.calendar_month,
                  hintText: 'Date of Birth',
                  controller: birthController,
                ),
                CompleteProfileFormField(
                  type: ProfileFormField.number,
                  icon: Icons.scale,
                  hintText: 'Your Weight',
                  controller: weightController,
                ),
                CompleteProfileFormField(
                  type: ProfileFormField.number,
                  icon: Icons.swap_vert,
                  hintText: 'Your Height',
                  controller: heightController,
                ),
              ],
            ),
          ),
          PrimaryButton(
            gradient: FitnessTheme.blueLinear,
            width: MediaQuery.of(context).size.width * 0.9,
            onPressed: () {},
            child: const Text('Next >'),
          ),
        ],
      ),
    );
  }
}
