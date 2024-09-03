import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  TextComponent(
      {super.key,
      this.isTitle = false,
      required this.content,
      this.size = 16,
      this.weight = FontWeight.normal,
      this.decoration = TextDecoration.none,
      this.color = Colors.black,
      this.fontStyle = FontStyle.normal,
      this.textAlign = TextAlign.left});

  bool isTitle;
  String content;
  double size;
  FontWeight weight;
  TextDecoration decoration;
  Color color;
  FontStyle fontStyle;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    if (isTitle == false) {
      return Text(
        content,
        style: TextStyle(
            fontSize: size,
            fontWeight: weight,
            decoration: decoration,
            color: color),
            textAlign: textAlign,
      );
    } else {
      return Text(
        content,
        style: TextStyle(
          fontSize: 25,
          color: color,
          fontStyle: fontStyle,
          decoration: decoration,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
