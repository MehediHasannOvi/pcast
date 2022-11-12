import 'package:flutter/material.dart';
import 'package:pcast/util/Appcolor.dart';

class AppTextFrom extends StatelessWidget {
  final IconData icons;
  final String text;
  const AppTextFrom({
    Key? key, required this.icons, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.7, color: const Color(0xFF757575)),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 10,
          ),
          Icon(
            icons,
            color: AppColor.subTextColor,
            size: 18,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: AppColor.subTextColor, fontSize: 14),
                  border: InputBorder.none,
                  hintText: text),
            ),
          ),
        ],
      ),
    );
  }
}
