

import 'package:flutter/material.dart';

import '../Widget/homepagebanner.dart';
import '../util/Appcolor.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: SizedBox(
            height: 40,
            width: 80,
            child: Image.asset(
              "Assets/Logo/logo.png",
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: AppColor.textColor,
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_outlined,
                  color: AppColor.textColor,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
               AppBaner()
            ],
          ),
        ),
      ),
    );
  }
}

