// ignore_for_file: file_names, unused_import

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../models/Item.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({
    required this.item,
    super.key,
    required this.color,
    this.backgroundColorOfImage,
  });
  final Item item;
  final Color color;
  final Color? backgroundColorOfImage;

  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource(item.sound),
                      );
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        : Container(
            color: color,
            child: Row(
              children: [
                Container(
                  height: 100,
                  color: backgroundColorOfImage,
                  child: Image.asset(
                    item.image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      final player = AudioPlayer();
                      player.play(
                        AssetSource(item.sound),
                      );
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.white,
                    size: 28,
                  ),
                )
              ],
            ),
          );
  }
}
