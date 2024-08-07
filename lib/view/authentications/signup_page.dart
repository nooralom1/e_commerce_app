import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/common/widgets/custom_textfield.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/view/authentications/login.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/custom_toggle_switch.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomToggleSwitch(
                onToggle: (index) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                initialLabelIndex: 0,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Lets get",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "Started!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                hintText: "mr.noor@gmail.com",
                labelText: "E-mail",
                onPress: () {},
                borderRadius: 20,
                prefixIcon: Icons.person,
                piColor: const Color(NColor.primaryColor),
                borderColor: const Color(NColor.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "mr.Noor-Alom",
                labelText: "Username",
                onPress: () {},
                borderRadius: 20,
                prefixIcon: Icons.supervised_user_circle,
                piColor: const Color(NColor.primaryColor),
                borderColor: const Color(NColor.primaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: "**********",
                labelText: "Password",
                onPress: () {},
                borderRadius: 20,
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.lock_outline,
                piColor: const Color(NColor.primaryColor),
                borderColor: const Color(NColor.primaryColor),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 180,
                child: CustomElevatedButn(
                  bgColor: NColor.primaryColor,
                  buttonName: "Create an account",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  btnNameColor: NColor.whiteColor,
                  buttonNameSize: 16,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: Color(
                            NColor.primaryColor,
                          ),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
