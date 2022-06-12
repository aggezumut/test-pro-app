import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  const AppSpacer({Key? key,  this.height =16,  this.width=16}) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
