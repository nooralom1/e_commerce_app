import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Image.asset("asset/images/Group 54.png"),
                const Positioned(
                    left: 143,
                    top: 7,
                    child: Text(
                      "My Cart",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                          color: const Color(0xffffe6ec),
                          child: Center(
                            child: Image.asset(NImage.image1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            NText.text1,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            NText.price1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 35,
                            width: 150,
                            child: CustomElevatedButn(
                                bgColor: NColor.primaryColor,
                                buttonName: "Buy Now",
                                onPressed: () {},
                                btnNameColor: NColor.whiteColor,
                                buttonNameSize: 17),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 50, left: 20),
                        child: Icon(
                          Icons.close,
                          color: Color(NColor.primaryColor),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 120,
                        child: Card(
                          color: const Color(0xffffe6ec),
                          child: Center(
                            child: Image.asset(NImage.image2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            NText.text2,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            NText.price1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 35,
                            width: 150,
                            child: CustomElevatedButn(
                                bgColor: NColor.primaryColor,
                                buttonName: "Buy Now",
                                onPressed: () {},
                                btnNameColor: NColor.whiteColor,
                                buttonNameSize: 17),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 50, left: 32),
                        child: Icon(
                          Icons.close,
                          color: Color(NColor.primaryColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
