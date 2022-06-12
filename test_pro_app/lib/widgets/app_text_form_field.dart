import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key,this.hintText = "", required this.controller}) : super(key: key);

  final String hintText;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
      keyboardType: TextInputType.text,

      decoration: InputDecoration(
        hintText: hintText,
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
