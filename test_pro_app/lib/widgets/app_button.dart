import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.onPressed})
      : super(key: key);

  final String text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 18),
          )),
    );
  }
}
