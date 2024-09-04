import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:divine_hindu_parivar/src/utils/colors.dart';

import '../../../widgets/button.dart';
import '../../home/views/latest_updates.dart';
import '../reset password/views/reser_password.dart';


class CheckYourEmailScreen extends StatefulWidget {

  final bool isForResetPassword;

  const CheckYourEmailScreen({super.key, required this.isForResetPassword});

  @override
  State<CheckYourEmailScreen> createState() => _CheckYourEmailScreenState();
}

class _CheckYourEmailScreenState extends State<CheckYourEmailScreen> {
  late Timer _timer;
  int _remainingSeconds = 120; // 2 minutes in seconds
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _isButtonEnabled = true;
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(1, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primary_color,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.01),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: screenHeight*0.06,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: white_color,
                      ),
                      Text(
                        'Go Back',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: white_color),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            // SizedBox(height: screenHeight * 0.02),
            Container(
                height: screenHeight * 0.88,
                width: screenWidth,
                decoration: const BoxDecoration(
                    color: white_color, borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.04),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.03),

                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenHeight * 0.08,
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: primary_color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.verified,
                            color: Colors.white,
                            size: screenHeight * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      const Text(
                        'Check Your Email',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: black_color),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text(
                        'We have sent the code to your email',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: black_color),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: screenWidth * 0.15,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              onSubmitted: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                counterText: "",

                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: primary_color),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: primary_color),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: primary_color),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: primary_color),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),


                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      button_Primary(
                        title: 'Continue',
                        onPressed: () {

                          // Check the flag to determine the next screen
                          if (widget.isForResetPassword) {
                            // Navigate to Reset Password Screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                            );
                          } else {
                            // Navigates to the SplashScreen and removes all previous routes
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => LatestUpdatesScreen()),
                                  (Route<dynamic> route) => false, // This removes all the previous routes
                            );
                            // // Navigate to Home Screen
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => LatestUpdatesScreen()),
                            // );
                          }
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>LatestUpdatesScreen()));

                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Center(
                        child: RichText(
                          text:  TextSpan(
                            text: 'Recent code in ',
                            style: const TextStyle(
                              fontSize: 14,
                              color: black_color,
                            ),
                            children: [
                              TextSpan(
                                text: _formatTime(_remainingSeconds),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: primary_color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
