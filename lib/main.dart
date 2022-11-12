import 'package:flutter/material.dart';
import 'package:pcast/util/Appcolor.dart';

import 'Screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PCast',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
        backgroundColor: AppColor.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
