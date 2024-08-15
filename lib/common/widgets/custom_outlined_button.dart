import 'package:flutter/material.dart';

class CustomOutlinedButn extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomOutlinedButn({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style:
          OutlinedButton.styleFrom(side: const BorderSide(color: Colors.white)),
      onPressed: onPressed,
      child: const Text(
        "Log in",
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
