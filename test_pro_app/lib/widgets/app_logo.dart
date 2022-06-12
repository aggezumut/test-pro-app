import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key,  this.height =90,  this.width=90}) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: width,
      child: const FlutterLogo(),
    );
  }
}
