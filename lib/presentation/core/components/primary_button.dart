import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  final double width;
  final double height;
  final Function()? onPressed;

  const PrimaryButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
  }) : super(key: key);

  static const buttonBorderRadius = BorderRadius.all(Radius.circular(99));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: buttonBorderRadius,
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: buttonBorderRadius,
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
