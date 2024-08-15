import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final VoidCallback onPress;
  final double borderRadius;
  final Color? bgColor;
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final Color? siColor;
  final Color piColor;
  final Color borderColor;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.onPress,
    required this.borderRadius,
    this.bgColor,
    this.suffixIcon,
    this.siColor,
    required this.prefixIcon,
    required this.piColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(
          suffixIcon,
          color: siColor,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        hintText: (hintText),
        labelText: (labelText),
        prefixIcon: Icon(
          prefixIcon,
          color: piColor,
        ),
      ),
    );
  }
}
