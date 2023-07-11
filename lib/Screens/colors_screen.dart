// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learningapp/Components/ItemRow.dart';
import 'package:learningapp/models/Item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> items = const [
    Item(
        enName: "Black",
        jpName: "Burakku",
        image: "assets/images/colors/color_black.png",
        sound: 'sounds/colors/black.wav'),
    Item(
        enName: "Brown",
        jpName: "Chairo",
        image: "assets/images/colors/color_brown.png",
        sound: 'sounds/colors/brown.wav'),
    Item(
        enName: "Dusty yelloe",
        jpName: "Hokori ppoi kiiro",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: 'sounds/colors/dusty_yellow.wav'),
    Item(
        jpName: "Gure",
        enName: "gray",
        image: "assets/images/colors/color_gray.png",
        sound: 'sounds/colors/gray.wav'),
    Item(
        jpName: "Midori",
        enName: "Green",
        image: "assets/images/colors/color_green.png",
        sound: 'sounds/colors/green.wav'),
    Item(
        jpName: "Aka",
        enName: "Red",
        image: "assets/images/colors/color_red.png",
        sound: 'sounds/colors/red.wav'),
    Item(
        jpName: "Shiroi",
        enName: "White  ",
        image: "assets/images/colors/color_white.png",
        sound: 'sounds/colors/white.wav'),
    Item(
        jpName: "kǎn",
        enName: "Yellow  ",
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text(
            "Colors",
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemRow(
              item: items[index],
              color: const Color(0xff79359f),
              backgroundColorOfImage: const Color(0xfffff6dc),
            );
          },
        ));
  }
}
