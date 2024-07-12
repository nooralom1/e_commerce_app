import 'package:ecommerceapp/constant/color.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_elevated_button.dart';
import '../../common/widgets/custom_outlined_button.dart';

class EntroPage extends StatelessWidget {
  const EntroPage({super.key});

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
              decoration: BoxDecoration(
                  color: Color(NColor.primaryColor),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "A Blend of all your",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    "favourite electronics!",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: CustomOutlinedButn(onPressed: () {},),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: CustomElevatedButn(
                      bgColor: NColor.whiteColor,
                      buttonName: 'Sign up',
                      onPressed: () {},
                      btnNameColor: NColor.primaryColor,
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