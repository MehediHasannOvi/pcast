import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  final Color colors;
  const AppText(
      {super.key,
      required this.text,
      required this.fontWeight,
      required this.fontsize,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colors,
          fontSize: fontsize,
          fontWeight: fontWeight,
          ),
          
    );
  }
}
