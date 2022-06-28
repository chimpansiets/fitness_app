import 'package:flutter/material.dart';

class NextProgressButton extends StatelessWidget {
  final Function()? onPressed;
  final double progress;

  const NextProgressButton({
    Key? key,
    required this.onPressed,
    required this.progress,
  }) : super(key: key);

  static const gradient = LinearGradient(colors: [
    Color(0xFF9DCEFF),
    Color(0xFF92A3FD),
  ]);
  static final borderRadius = BorderRadius.circular(50);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -5,
          right: -5,
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            value: progress,
            color: Colors.black,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF92A3FD)),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: borderRadius,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
            ),
            onPressed: onPressed,
            child: const Icon(Icons.navigate_next),
          ),
        ),
      ],
    );
  }
}
