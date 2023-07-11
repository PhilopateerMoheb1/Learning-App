// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learningapp/Components/ItemRow.dart';
import 'package:learningapp/models/Item.dart';

import '../Components/PhrasesRow.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});
  final List<Item> items = const [
    Item(
        enName: "are_you_coming",
        jpName: "Kimasy Ka",
        sound: 'sounds/phrases/are_you_coming.wav'),
    Item(
        enName: "how are you feeling?",
        jpName: "Go kibun wa ikagadesu ka",
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Item(
        enName: "I love anime",
        jpName: "Watashi wa anume ga daisukidesu",
        sound: 'sounds/phrases/i_love_anime.wav'),
    Item(
        jpName: "Doko ni iku no?",
        enName: "Where are you going?",
        sound: 'sounds/phrases/where_are_you_going.wav'),
    Item(
        jpName: "Namae wa nadesu ka?",
        enName: "What is your name ?",
        sound: 'sounds/phrases/what_is_your_name.wav'),
    Item(
        jpName: "Watashi wa puroguramingu daisukidesu?",
        enName: "I love Programming",
        sound: 'sounds/phrases/i_love_programming.wav'),
    Item(
        jpName: "Don't forget to subscribe",
        enName: "Kodoku suru koto o wasurenaide kudasai!",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Item(
        jpName: "Yes I am coming",
        enName: "Yes I am coming",
        sound: "sounds/phrases/yes_im_coming .wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text(
            "Phrases",
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return PhrasesRow(
              item: items[index],
              color: const Color(0XFF50ABC7),
            );
          },
        ));
  }
}
