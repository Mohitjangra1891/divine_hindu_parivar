
import 'package:divine_hindu_parivar/src/features/auth/login/views/login_screen.dart';
import 'package:divine_hindu_parivar/src/features/auth/register/views/register_screen.dart';
import 'package:divine_hindu_parivar/src/features/auth/reset%20password/views/reser_password.dart';
import 'package:divine_hindu_parivar/src/features/contact_us/contact_us.dart';
import 'package:divine_hindu_parivar/src/features/home/views/event_screen.dart';
import 'package:divine_hindu_parivar/src/features/home/views/latest_updates.dart';
import 'package:divine_hindu_parivar/src/features/profile/views/edit_profile.dart';
import 'package:divine_hindu_parivar/src/features/profile/views/profile.dart';
import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:divine_hindu_parivar/src/utils/imges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: primary_color,
      systemNavigationBarColor: Colors.white,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LatestUpdatesScreen(),
    );
  }
}

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: primary_color,
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: white_color,
                      ),
                      // width: screenHeight * 0.88,
                      // height: screenHeight * 0.30,
                      padding: EdgeInsets.all( screenHeight * 0.02),
                      child: Image.asset(
                        app_logo,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Center(
                    child: const Text(
                      'Welcome To Divine ',
                      style: TextStyle(fontSize: 28, color: white_color, fontWeight: FontWeight.w600),
                      ),
                  ),
                  // SizedBox(height: screenHeight * 0.02),
                  Center(
                    child: const Text(
                      'Hindu Parivar',
                      style: TextStyle(fontSize: 28, color: white_color, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login_screen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenWidth*0.45, screenHeight * 0.06),
                      backgroundColor: white_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 16, color: primary_color,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>register_screen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenWidth*0.45, screenHeight * 0.06),
                      backgroundColor: primary_color,
                      side: BorderSide(color: white_color, width: 2), //
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0 ),
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 16, color: white_color ,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.08),
                ],
              ),
            )),
      ),
    );
  }
}
