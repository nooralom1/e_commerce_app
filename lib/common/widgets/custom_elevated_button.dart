
import 'package:flutter/material.dart';

class CustomElevatedButn extends StatelessWidget {
  final int bgColor;
  final int btnNameColor;
  final String buttonName;
  final double buttonNameSize;
  final VoidCallback onPressed;
  const CustomElevatedButn({
    super.key,
    required this.bgColor,
    required this.buttonName,
    required this.onPressed,
    required this.btnNameColor,
    required this.buttonNameSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Color(bgColor)),
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: TextStyle(
          color: Color(btnNameColor),
          fontSize: buttonNameSize,
        ),
      ),
    );
  }
}
