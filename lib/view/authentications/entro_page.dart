import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/common/widgets/custom_outlined_button.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/view/authentications/login.dart';
import 'package:ecommerceapp/view/authentications/signup_page.dart';
import 'package:flutter/material.dart';

class EntroPage extends StatefulWidget {
  const EntroPage({super.key});

  @override
  State<EntroPage> createState() => _EntroPageState();
}

class _EntroPageState extends State<EntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset("asset/images/image 3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160, top: 20),
                  child: Image.asset("asset/images/image 4 (1).png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 10),
                  child: Image.asset("asset/images/file.png"),
                ),
              ],
            ),
            Container(
              height: 508,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(NColor.primaryColor),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "A Blend of all your",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  const Text(
                    "favourite electronics!",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: CustomOutlinedButn(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: CustomElevatedButn(
                      bgColor: NColor.whiteColor,
                      buttonName: 'Sign up',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      },
                      btnNameColor: NColor.primaryColor,
                      buttonNameSize: 22,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
