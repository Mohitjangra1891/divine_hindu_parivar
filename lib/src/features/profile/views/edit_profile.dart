import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/imges.dart';
import '../../../widgets/button.dart';
import '../../../widgets/text_field.dart';

class edit_profile_screen extends StatelessWidget {
  const edit_profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: screenHeight * 0.25,
            width: screenWidth,
            decoration: const BoxDecoration(
                color: primary_color, borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))),
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Input Your Changes',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: white_color),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CircleAvatar(
                    radius: screenHeight * 0.04,
                    backgroundImage: AssetImage(app_logo),
                    // child: Image.asset(app_logo , fit: BoxFit.cover,),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const textField_widget(
                  title: "Full Name",
                  hint: 'Enter your full name',
                ),
                SizedBox(height: screenHeight * 0.01),
                const textField_widget(
                  title: "Username",
                  hint: 'Enter your username',
                ),
                SizedBox(height: screenHeight * 0.01),
                const textField_widget(
                  title: "Email",
                  hint: 'Enter your email',
                ),
                SizedBox(height: screenHeight * 0.01),
                const textField_widget(
                  title: " Password",
                  hint: '********',
                ),
                SizedBox(height: screenHeight * 0.01),
                const textField_widget(
                  title: "Confirm Password",
                  hint: '********',
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: textField_widget(
                        title: "Phone no.",
                        hint: 'Enter your phone no.',
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Expanded(
                      child: textField_widget(
                        title: "State",
                        hint: 'Enter your state',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary_color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Save Changes',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: white_color),
                          ),
                        ),
                      )
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    ElevatedButton(
                      onPressed: () {

                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>register_screen()));
                      },
                      style: ElevatedButton.styleFrom(
                        // minimumSize: Size(screenWidth*0.45, screenHeight * 0.06),
                        backgroundColor: white_color,
                        side: BorderSide(color: primary_color, width: 2), //
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0 ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 18, color: primary_color ,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
