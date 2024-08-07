import 'package:ecommerceapp/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatelessWidget {
  final void Function(int?) onToggle;
  final int initialLabelIndex;
  const CustomToggleSwitch({
    super.key,
    required this.onToggle,
    required this.initialLabelIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      borderColor: const [Color(NColor.primaryColor)],
      borderWidth: 2,
      minWidth: 160,
      minHeight: 50,
      cornerRadius: 20,
      activeBgColors: [
        [Colors.red[500]!],
        [Colors.red[500]!]
      ],
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Colors.red,
      initialLabelIndex: initialLabelIndex,
      totalSwitches: 2,
      labels: const ['Sign up', 'Log in'],
      radiusStyle: true,
      onToggle: onToggle,
    );
  }
}
