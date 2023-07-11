// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    this.color = Colors.black,
    this.text = "Nothing",
    this.textColor = Colors.white,
    super.key,
    this.onTap,
  });
  Color color;
  String text;
  Color textColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(left: 24),
          alignment: Alignment.centerLeft,
          height: 65,
          color: color,
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 20, color: textColor),
              )
            ],
          ),
        ));
  }
}
