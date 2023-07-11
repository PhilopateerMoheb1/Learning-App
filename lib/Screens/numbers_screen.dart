import 'package:flutter/material.dart';
import 'package:learningapp/models/Item.dart';
import 'package:learningapp/Components/ItemRow.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Item> items = const [
    Item(
        enName: "one",
        jpName: "ichi",
        image: "assets/images/numbers/number_one.png",
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Item(
        enName: "two",
        jpName: "Ni",
        image: "assets/images/numbers/number_two.png",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Item(
        enName: "three",
        jpName: "San",
        image: "assets/images/numbers/number_three.png",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Item(
      jpName: "Shi",
      enName: "four",
      image: "assets/images/numbers/number_four.png",
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Item(
        jpName: "Go",
        enName: "five",
        image: "assets/images/numbers/number_five.png",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Item(
        jpName: "Roku",
        enName: "six",
        image: "assets/images/numbers/number_six.png",
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Item(
        jpName: "Sebun",
        enName: "seven",
        image: "assets/images/numbers/number_seven.png",
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Item(
        enName: "eight",
        jpName: "hachi",
        image: "assets/images/numbers/number_eight.png",
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Item(
        enName: "nine",
        jpName: "Kyu",
        image: "assets/images/numbers/number_nine.png",
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Item(
        enName: "ten",
        jpName: "Ju",
        image: "assets/images/numbers/number_ten.png",
        sound: 'sounds/numbers/number_ten_sound.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text(
            "Numbers",
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemRow(
              item: items[index],
              color: const Color(0XFFEF9235),
              backgroundColorOfImage: const Color(0xfffff6dc),
            );
          },
        ));
  }
}
