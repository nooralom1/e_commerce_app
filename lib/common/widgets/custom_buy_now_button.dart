import 'package:ecommerceapp/constant/color.dart';
import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class CustomBuyNowButton extends StatelessWidget {
  const CustomBuyNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 1, color: const Color(0xffB8BBC7))),
          child: const Center(
            child: Icon(
              Icons.bookmark_border,
              color: Color(0xffB8BBC7),
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 250,
          height: 45,
          child: CustomElevatedButn(
              bgColor: NColor.primaryColor,
              buttonName: "Buy Now",
              onPressed: () {},
              btnNameColor: NColor.whiteColor,
              buttonNameSize: 20),
        )
      ],
    );
  }
}
