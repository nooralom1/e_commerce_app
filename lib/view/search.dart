import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/common/widgets/custom_textfield.dart';
import 'package:ecommerceapp/models/all_models.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("asset/images/Group 2.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 240,
                        child: CustomTextField(
                            hintText: "Computer",
                            labelText: "Search",
                            onPress: () {},
                            borderRadius: 20,
                            prefixIcon: Icons.search,
                            piColor: const Color(NColor.primaryColor),
                            borderColor: const Color(NColor.primaryColor)),
                      ),
                      const SizedBox(width: 7,),
                      CustomElevatedButn(
                          bgColor: NColor.primaryColor,
                          buttonName: "Search",
                          onPressed: () {},
                          btnNameColor: NColor.whiteColor,
                          buttonNameSize: 14)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: double.maxFinite,
                      child: GridView.builder(
                          itemCount: searchItem.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Card(
                              color: const Color(0xffffe6ec),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          searchItem[index].imagePath)),
                                  Text(searchItem[index].imageName),
                                ],
                              ),
                            );
                          })),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
