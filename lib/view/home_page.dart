import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/models/data_model.dart';
import 'package:ecommerceapp/view/profile.dart';
import 'package:ecommerceapp/view/search.dart';
import 'package:flutter/material.dart';

import 'my_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("asset/images/Group 2.png"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "New Products",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: productItem.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              width: 150,
                              child: Card(
                                color: const Color(0xffffe6ec),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.asset(
                                            productItem[index].imagePath)),
                                    Text(productItem[index].imageName),
                                    Text(
                                      productItem[index].imagePrize,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ));
                        }),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Top Products",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productItem.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 150,
                            child: Card(
                              color: const Color(0xffffe6ec),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(productItem[index].imagePath),
                                  Text(productItem[index].imageName),
                                  Text(productItem[index].imagePrize)
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color(NColor.primaryColor),
          currentIndex: 0,
          items:  [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: InkWell(onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchPage()));
                  });
                },child: const Icon(Icons.search)), label: 'search'),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap:(){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyCart()));
                      });
                    },
                    child: const Icon(Icons.shopping_bag_outlined)), label: 'card'),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap:(){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
                      });
                    },
                    child: const Icon(Icons.person_outline_rounded)), label: 'Profile'),
          ],
        ));
  }
}
