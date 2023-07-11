// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learningapp/Components/ItemRow.dart';
import 'package:learningapp/models/Item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> items = const [
    Item(
        enName: "Father",
        jpName: "Chichioya",
        image: "assets/images/family_members/family_father.png",
        sound: 'sounds/family_members/father.wav'),
    Item(
        enName: "Daugther",
        jpName: "Musume",
        image: "assets/images/family_members/family_daughter.png",
        sound: 'sounds/family_members/daughter.wav'),
    Item(
        enName: "Grand Father",
        jpName: "OJISAN",
        image: "assets/images/family_members/family_grandfather.png",
        sound: 'sounds/family_members/grand_father.wav'),
    Item(
        jpName: "Hahaoya",
        enName: "Mother",
        image: "assets/images/family_members/family_mother.png",
        sound: 'sounds/family_members/mother.wav'),
    Item(
        jpName: "Sobo",
        enName: "Grand Mother",
        image: "assets/images/family_members/family_grandmother.png",
        sound: 'sounds/family_members/grand_mother.wav'),
    Item(
        jpName: "Nisan",
        enName: "Older brother",
        image: "assets/images/family_members/family_older_brother.png",
        sound: 'sounds/family_members/older_bother.wav'),
    Item(
        jpName: "Ane",
        enName: "Older sister",
        image: "assets/images/family_members/family_older_sister.png",
        sound: 'sounds/family_members/older_sister.wav'),
    Item(
        enName: "Son",
        jpName: "Musuko",
        image: "assets/images/family_members/family_son.png",
        sound: 'sounds/family_members/son.wav'),
    Item(
        enName: "Younger sister",
        jpName: "Imoto",
        image: "assets/images/family_members/family_younger_sister.png",
        sound: 'sounds/family_members/younger_sister.wav'),
    Item(
        enName: "Younger Brother",
        jpName: "ototo",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: 'sounds/family_members/younger_brohter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text(
            "Family Members",
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemRow(
              item: items[index],
              color: const Color(0xff558b37),
              backgroundColorOfImage: const Color(0xfffff6dc),
            );
          },
        ));
  }
}
