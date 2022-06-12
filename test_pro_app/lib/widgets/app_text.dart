import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {Key? key,

      required this.text,
      this.fontWeight = FontWeight.normal,
      this.fontSize= 17})
      : super(key: key);

  const AppText.title(
      {Key? key,

        required this.text,
         this.fontWeight = FontWeight.bold,
         this.fontSize = 28})
      : super(key: key);

  const AppText.subtitle(
      {Key? key,

        required this.text,
        this.fontWeight = FontWeight.normal,
        this.fontSize = 14})
      : super(key: key);



  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(

        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
