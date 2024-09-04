import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class contact_us_screen extends StatefulWidget {
  const contact_us_screen({super.key});

  @override
  State<contact_us_screen> createState() => _contact_us_screenState();
}

class _contact_us_screenState extends State<contact_us_screen> {
  final TextEditingController _messagecontroller = TextEditingController();
  int _currentLength = 0;
  static const int _maxLength = 300;

  @override
  void initState() {
    super.initState();
    _messagecontroller.addListener(() {
      setState(() {
        _currentLength = _messagecontroller.text.length;
      });
    });
  }

  @override
  void dispose() {
    _messagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primary_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.20,
              width: screenWidth,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.03),
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: white_color),
                  ),
                ),
              ),
            ),
            Container(
              height: screenHeight * 0.80,
              width: screenWidth,
              decoration: const BoxDecoration(
                  color: white_color,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),
              child: Padding(
                padding: EdgeInsets.all(screenHeight * 0.04),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    const Center(
                      child: Text(
                        'Lets Get In Touch',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: black_color),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    const textField_widget(
                      title: "Full Name",
                      hint: 'Enter your Full Name',
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    const textField_widget(
                      title: "Email Address",
                      hint: 'Enter your email',
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    const textField_widget(
                      title: "Phone no.",
                      hint: 'Enter your phone no.',
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Message',
                          style: TextStyle(fontSize: 14, color: grey_text_color, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Container(
                          height: screenHeight * 0.12,
                          child: TextField(
                            controller: _messagecontroller,
                            maxLength: _maxLength,
                            maxLines: null,
                            expands: true,
                            decoration: InputDecoration(
                                // suffix: Text(
                                //   '$_currentLength/$_maxLength',
                                //   style: TextStyle(
                                //     color: Colors.grey,
                                //   ),
                                // ),
                                fillColor: field_color,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: field_color),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: field_color),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: field_color),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: field_color),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                hintText: 'Enter your text here',
                                hintStyle: TextStyle(fontSize: 14, color: hint_color, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
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
                                    text: 'I here by agree to our ',
                                    style: TextStyle(fontSize: 12, color: black_color, fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: 'privacy policy',
                                    style: TextStyle(fontSize: 12, color: primary_color, fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: 'terms',
                                    style: TextStyle(fontSize: 12, color: black_color, fontWeight: FontWeight.w400),
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
                      title: 'Send',
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckYourEmailScreen()));
                      },
                      width: screenWidth,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
