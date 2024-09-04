import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../main.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isMinLengthMet = false;
  bool _hasNumber = false;
  bool _isButtonEnabled = false;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validatePassword);
  }

  void _validatePassword() {
    final password = _passwordController.text;

    setState(() {
      _isMinLengthMet = password.length >= 6;
      _hasNumber = password.contains(RegExp(r'\d'));
      _isButtonEnabled = _isMinLengthMet && _hasNumber;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
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
            SizedBox(height: screenHeight * 0.02),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
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
            Spacer(),
            // SizedBox(height: screenHeight * 0.02),
            Container(
                height: screenHeight * 0.85,
                width: screenWidth,
                decoration: const BoxDecoration(
                    color: white_color, borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.02),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenHeight * 0.1,
                          height: screenHeight * 0.1,
                          decoration: BoxDecoration(
                            color: primary_color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: screenHeight * 0.05,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Center(
                        child: Text(
                          'Reset your password',
                          style: TextStyle(
                            fontSize: screenHeight * 0.028,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Center(
                        child: Text(
                          'Please enter your new password',
                          style: TextStyle(
                            fontSize: screenHeight * 0.02,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //       vertical: screenHeight * 0.015,
                      //       horizontal: screenWidth * 0.03),
                      //   decoration: BoxDecoration(
                      //     color: Colors.grey[100],
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(color: Colors.grey[300]!),
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Icon(Icons.lock_outline),
                      //       SizedBox(width: screenWidth * 0.03),
                      //       Expanded(
                      //         child: TextField(
                      //           obscureText: true,
                      //           decoration: InputDecoration(
                      //             border: InputBorder.none,
                      //             hintText: '•••••••',
                      //           ),
                      //         ),
                      //       ),
                      //       Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                      //     ],
                      //   ),
                      // ),

                      TextField(
                        controller: _passwordController,
                        obscureText: _isObscured,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary_color),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary_color),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary_color),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: primary_color),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        children: [
                          Icon(_isButtonEnabled ? Icons.check_circle : Icons.cancel, color: primary_color),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            'Your Password must contain',
                            style: TextStyle(fontSize: screenHeight * 0.018),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          Icon(
                            _isMinLengthMet ? Icons.check_circle : Icons.cancel,
                            color: _isMinLengthMet ? primary_color : Colors.grey,
                            size: screenHeight * 0.025,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            'At least 6 characters',
                            style: TextStyle(fontSize: screenHeight * 0.018),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          Icon(
                            _hasNumber ? Icons.check_circle : Icons.cancel,
                            color: _hasNumber ? primary_color : Colors.grey,
                            size: screenHeight * 0.025,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            'Contains a number',
                            style: TextStyle(fontSize: screenHeight * 0.018),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      Center(
                        child: ElevatedButton(
                          onPressed: _isButtonEnabled ? () {

                            // Navigates to the SplashScreen and removes all previous routes
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => splash_screen()),
                                  (Route<dynamic> route) => false, // This removes all the previous routes
                            );
                          } : (){
                            // Navigates to the SplashScreen and removes all previous routes
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => splash_screen()),
                                  (Route<dynamic> route) => false, // This removes all the previous routes
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                              horizontal: screenWidth * 0.25,
                            ),
                          ),
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontSize: screenHeight * 0.02,
                              color: Colors.white,
                            ),
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
