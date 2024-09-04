import 'dart:ui';

import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/imges.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/text_field.dart';
import '../../email verify/email_verify_screen.dart';
import '../../register/views/register_screen.dart';

class forgot_password extends StatelessWidget {
  const forgot_password({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: primary_color,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenHeight * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              app_logo,
                              height: 24,
                              width: 24,
                            ),
                            const Text(
                              'create an account',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: white_color,
                                  decoration: TextDecoration.underline,
                                  decorationColor: white_color,
                                  decorationThickness: 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: white_color,
                          ),
                          // width: screenHeight * 0.88,
                          // height: screenHeight * 0.30,
                          padding: EdgeInsets.all(screenHeight * 0.02),
                          child: Image.asset(
                            fingerprint,
                            fit: BoxFit.fill,
                            height: 28,
                            width: 28,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      const Text(
                        'Forgot Password ?',
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: white_color),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Center(
                        child: Text(
                          ' To verify your account, please enter your email',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: white_color),
                        ),
                      ),
                      const Center(
                        child: Text(
                          ' We\'ll send a 4-digit verification code to your email',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: white_color),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Container(
                  height: screenHeight * 0.55,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                      color: white_color, borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.04),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: screenHeight * 0.08),
                        const textField_widget(
                          title: "Email",
                          hint: 'Enter your email',
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        button_Primary(
                          title: 'Continue',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CheckYourEmailScreen(isForResetPassword: true)));
                          },
                          width: screenWidth * 0.50,
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.keyboard_backspace_outlined,
                                  size: 10,
                                ),
                                Text(
                                  'Back To Log In',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: black_color),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
