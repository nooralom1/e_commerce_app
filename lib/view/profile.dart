import 'package:flutter/material.dart';

import '../constant/color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(NColor.primaryColor), width: 4),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.h_mobiledata,
                    color: Color(NColor.primaryColor),
                    size: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mr. Heba Qaisir",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              const SizedBox(
                height: 40,
              ),
              const ListTile(
                leading: Icon(Icons.person_outline),
                title: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.notifications),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(NColor.primaryColor),
                  child: Center(
                    child: Text("1",style: TextStyle(color: Color(NColor.whiteColor)),),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.payment),
                title: Text(
                  "Payments",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.error_outline),
                title: Text(
                  "Supports",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
