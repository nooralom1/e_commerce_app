import 'package:ecommerceapp/view/home_page.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';

class FingerPage extends StatefulWidget {
  const FingerPage({super.key});

  @override
  State<FingerPage> createState() => _FingerPageState();
}

class _FingerPageState extends State<FingerPage> {
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
              height: 425,
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
                    "Finger Print",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  const Text(
                    "access!",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      });
                    },
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset("asset/images/whitefinger.png")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Icon(
                      Icons.check,
                      color: Color(NColor.primaryColor),
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
