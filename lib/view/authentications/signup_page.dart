import 'package:ecommerceapp/common/widgets/custom_textfield.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/custom_toggle_switch.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomToggleSwitch(
              onToggle: (index) {},
              initialLabelIndex: 0,
            ),
            Text("Lets get"),
            Text("Started!"),
            CustomTextField(
              hintText: "mr.noor@gmail.com",
              labelText: "E-mail",
              onPress: () {},
              borderRadius: 20,
              prefixIcon: Icons.person,
              piColor: Color(NColor.primaryColor), borderColor: Color(NColor.primaryColor),
            ),
            CustomTextField(
              hintText: "mr.Noor-Alom",
              labelText: "Username",
              onPress: () {},
              borderRadius: 20,
              prefixIcon: Icons.supervised_user_circle,
              piColor: Color(NColor.primaryColor), borderColor: Color(NColor.primaryColor),
            ),
            CustomTextField(
              hintText: "**********",
              labelText: "Password",
              onPress: () {},
              borderRadius: 20,
              prefixIcon: Icons.lock_outline,
              piColor: Color(NColor.primaryColor), borderColor: Color(NColor.primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Text(
                  "Log in",
                  style: TextStyle(color: Color(NColor.primaryColor)),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
