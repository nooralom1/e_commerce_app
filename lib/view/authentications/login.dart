import 'package:ecommerceapp/view/authentications/finger.dart';
import 'package:ecommerceapp/view/authentications/signup_page.dart';
import 'package:ecommerceapp/view/home_page.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/custom_elevated_button.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/custom_toggle_switch.dart';
import '../../constant/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          builder: (context) => const SignupPage()));
                },
                initialLabelIndex: 1,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "Back!",
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
                  buttonName: "Log in",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  btnNameColor: NColor.whiteColor,
                  buttonNameSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Or",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("asset/images/google.png"),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FingerPage()));
                      });
                    },
                    child: CircleAvatar(
                      radius: 30,
                      child: Image.asset("asset/images/redfinger.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      });
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(NColor.primaryColor),
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
