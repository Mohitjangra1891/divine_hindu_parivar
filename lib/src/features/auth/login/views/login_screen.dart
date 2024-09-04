import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/imges.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/text_field.dart';
import '../../forgot password/views/forgot_password.dart';
import '../../register/views/register_screen.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: primary_color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome Back !',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: white_color),
              ),
              SizedBox(height: screenHeight * 0.04),
              Container(
                height: screenHeight * 0.85,
                width: screenWidth,
                decoration: const BoxDecoration(
                    color: white_color, borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:  screenHeight * 0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenHeight * 0.04),
                        child: Image.asset(
                          app_logo,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text(
                        'Log in your account',
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: black_color),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      textField_widget(
                        title: "Email",
                        hint: 'info@gmail.com',
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      textField_widget(
                        title: "Password",
                        hint: '********',
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password()));

                          },
                          child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(fontSize: 14, color: primary_color, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.04),
                      button_Primary(title:'Log In', onPressed: () {  },),
                      SizedBox(height: screenHeight * 0.04),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>register_screen()));
                          },
                          child: RichText(
                            text:  TextSpan(children: [
                              TextSpan(
                                text: 'Not Registered yet?',
                                style: TextStyle(fontSize: 12, color: hint_color, fontWeight: FontWeight.w400),
                              ), TextSpan(
                                text: ' Register here.',
                                style: TextStyle(fontSize: 12, color: primary_color, fontWeight: FontWeight.w600),
                              ),
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
