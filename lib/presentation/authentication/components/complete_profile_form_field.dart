import 'package:fitness_app/theme/theme.dart';
import 'package:flutter/material.dart';

enum ProfileFormField {
  gender,
  date,
  number,
}

class CompleteProfileFormField extends StatelessWidget {
  final ProfileFormField type;
  final TextEditingController? controller;
  final String hintText;
  final IconData icon;

  const CompleteProfileFormField({
    Key? key,
    required this.type,
    required this.hintText,
    required this.icon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      filled: true,
      fillColor: FitnessTheme.formFillColor,
      prefixIcon: Icon(
        icon,
        color: FitnessTheme.gray1,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15),
      ),
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 12, color: FitnessTheme.gray2),
    );

    if (type == ProfileFormField.gender) {
      return DropdownButtonFormField<String>(
        decoration: inputDecoration,
        items: const [
          DropdownMenuItem(
            value: 'Male',
            child: Text('Male'),
          ),
          DropdownMenuItem(
            value: 'Female',
            child: Text('Female'),
          )
        ],
        onChanged: (value) {},
      );
    } else {
      return TextFormField(
        controller: controller,
        onTap: type == ProfileFormField.date
            ? () async {
                var selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1930),
                  lastDate: DateTime.now(),
                );

                if (selectedDate == null) {
                  return;
                }

                controller!.text =
                    "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}";
              }
            : null,
        decoration: inputDecoration,
      );
    }
  }
}
