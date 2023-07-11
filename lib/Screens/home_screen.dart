import 'package:flutter/material.dart';
import 'package:learningapp/Components/Category_components.dart';
import 'package:learningapp/Screens/Family_members_screen.dart';
import 'package:learningapp/Screens/PhrasesScreen.dart';
import 'package:learningapp/Screens/colors_screen.dart';

import 'numbers_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text("Toku"),
      ),
      body: Column(children: [
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NumberPage();
            }));
          },
          color: const Color(0XFFEF9235),
          text: "Numbers",
          textColor: Colors.white,
        ),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FamilyMembersPage();
            }));
          },
          color: const Color(0xff558b37),
          text: "FamilyMembers",
          textColor: Colors.white,
        ),
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ColorsPage();
            }));
          },
          color: const Color(0xff79359f),
          text: "Colors",
          textColor: Colors.white,
        ),
        Category(
          color: const Color(0XFF50ABC7),
          text: "Phrases",
          textColor: Colors.white,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PharsesPage();
            }));
          },
        ),
      ]),
    );
  }
}
