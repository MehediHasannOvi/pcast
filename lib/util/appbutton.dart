import 'package:flutter/material.dart';
import 'package:pcast/util/Appcolor.dart';
import 'package:pcast/util/apptext.dart';

class AppButton extends StatelessWidget {
  final Color shadowcolors;
  final String buttonText;
  final Color buttonColor;
  const AppButton({
    Key? key,
    required this.shadowcolors,
    required this.buttonText,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: shadowcolors,
          offset: const Offset(0, 1),
          blurRadius: 20,
          spreadRadius: 0.5,
        ),
      ], color: buttonColor, borderRadius: BorderRadius.circular(30)),
      child: AppText(
          text: buttonText,
          fontWeight: FontWeight.w500,
          fontsize: 16,
          colors: AppColor.textColor),
    );
  }
}
