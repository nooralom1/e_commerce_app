import 'package:ecommerceapp/view/home_page.dart';
import 'package:ecommerceapp/view/my_cart.dart';
import 'package:ecommerceapp/view/profile.dart';
import 'package:ecommerceapp/view/search.dart';
import 'package:flutter/material.dart';

import 'constant/color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> page = [
    const HomePage(),
    const SearchPage(),
    const MyCart(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color(NColor.primaryColor),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
      body: page.elementAt(currentIndex),
    );
  }
}
