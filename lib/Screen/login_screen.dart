import 'package:flutter/material.dart';
import 'package:pcast/util/appbutton.dart';
import 'package:pcast/util/apptext.dart';

import '../util/Appcolor.dart';
import '../util/apptextfrom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // i dont have elamants so i pass this
          children: [
            const SizedBox(
              height: 30,
            ),
            // Login Screen Logo
            SizedBox(
              height: 80.00,
              width: 120.00,
              child: Image.asset(
                "Assets/Logo/logo.png",
              ),
            ),

            // Login Screen Titel
            const SizedBox(
              height: 40,
            ),
            AppText(
                text: "Episodic series of \nDigital audio.",
                fontWeight: FontWeight.w500,
                fontsize: 22.00,
                colors: AppColor.textColor),

            // Login Screen FromFild
            const SizedBox(
              height: 50,
            ),
            const AppTextFrom(
              icons: Icons.mail_outline,
              text: 'E-mail address',
            ),
            const SizedBox(
              height: 15,
            ),
            const AppTextFrom(
              icons: Icons.key_outlined,
              text: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            AppButton(
                shadowcolors: AppColor.buttonColorBlue,
                buttonText: "Login",
                buttonColor: AppColor.buttonColorBlue),

            Center(
              child: TextButton(
                  onPressed: () {},
                  child: AppText(
                      text: "Forget Password?",
                      fontWeight: FontWeight.normal,
                      fontsize: 14,
                      colors: AppColor.subTextColor)),
            ),
            const SizedBox(
              height: 40,
            ),
            const AppButton(
                shadowcolors: Color(0xFF053DB4),
                buttonText: "Login With Facebook",
                buttonColor: Color(0xFF053DB4)),
            const SizedBox(
              height: 20,
            ),
            AppButton(
                shadowcolors: AppColor.buttonColorRed,
                buttonText: "Register new account",
                buttonColor: AppColor.buttonColorRed),
          ],
        ),
      ),
    );
  }
}
