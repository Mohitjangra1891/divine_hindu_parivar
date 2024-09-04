import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/imges.dart';
import '../../../../widgets/button.dart';
import '../../../../widgets/text_field.dart';
import '../../email verify/email_verify_screen.dart';
import '../../login/views/login_screen.dart';

class register_screen extends StatelessWidget {
  const register_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            // color: primary_color,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.10,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        color: primary_color, borderRadius: BorderRadius.only(bottomRight: Radius.circular(12))),
                    child: Center(
                      child: const Text(
                        'Create your account',
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: white_color),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.03, vertical: screenHeight * 0.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: textField_widget(
                                  title: "First Name",
                                  hint: 'Enter your name',
                                ),
                              ),
              
                              SizedBox(width: screenWidth *0.02,),
              
                              Expanded(
                                child: textField_widget(
                                  title: "Last Name",
                                  hint: 'Enter your last name',
                                ),
                              ),
                            ],
                          ),
                          const textField_widget(
                            title: "Email",
                            hint: 'Enter your email',
                          ),
                          const textField_widget(
                            title: "Password",
                            hint: '********',
                          ),
                          const textField_widget(
                            title: "Confirm Password",
                            hint: '********',
                          ),
                          const textField_widget(
                            title: "Phone no.",
                            hint: 'Enter your phone no.',
                          ),
                          const textField_widget(
                            title: "Address",
                            hint: 'Street Address',
                          ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: textField_widget(
                                  title: "City",
                                  hint: 'Enter your city',
                                ),
                              ),
                              SizedBox(width: screenWidth *0.02,),
              
                              Expanded(
                                child: textField_widget(
                                  title: "Zip",
                                  hint: 'Enter zip code',
                                ),
                              ),
                            ],
                          ),
                          const textField_widget(
                            title: "State",
                            hint: 'Enter your state',
                          ),
                          const textField_widget(
                            title: "Home Town",
                            hint: 'Enter your home town',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (bool? value) {},
                                    activeColor: primary_color,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()));
                                    },
                                    child: RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                          text: 'I understood the ',
                                          style: TextStyle(fontSize: 12, color: black_color, fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: 'terms & policy',
                                          style: TextStyle(fontSize: 12, color: primary_color, fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          button_Primary(
                            title: 'Register Now',
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckYourEmailScreen()));

                            },
                            width: screenWidth,
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => login_screen()));
                              },
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                    text: 'have an account?',
                                    style: TextStyle(fontSize: 12, color: hint_color, fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: ' Log In',
                                    style: TextStyle(fontSize: 12, color: primary_color, fontWeight: FontWeight.w600),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth *0.02,),
      
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
