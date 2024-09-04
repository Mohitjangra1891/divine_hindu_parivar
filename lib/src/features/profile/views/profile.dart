import 'package:divine_hindu_parivar/src/utils/imges.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import 'edit_profile.dart';
class profile_Screen extends StatelessWidget {
  const profile_Screen({super.key});
 @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children:[

        Container(
          height: screenHeight * 0.20,
          width: screenWidth,
          decoration: const BoxDecoration(
              color: primary_color,
              borderRadius: BorderRadius.only( bottomRight: Radius.circular(15))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: white_color),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    width: screenWidth * 0.35,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>edit_profile_screen()));

                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(screenWidth * 0.38, screenHeight * 0.05),
                        backgroundColor: white_color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit,
                              color: primary_color,
                              size: 16,
                            ),
                            Text(
                              ' Edit',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primary_color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),


         Padding(
           padding:  EdgeInsets.all(screenHeight*0.08),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Text(
                'Profile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: black_color),
              ),
              SizedBox(height: screenHeight * 0.02),

              CircleAvatar(
                radius: screenHeight*0.08,
                backgroundImage: AssetImage(app_logo),
                // child: Image.asset(app_logo , fit: BoxFit.cover,),
              ),
              SizedBox(height: screenHeight * 0.02),

              Text(
                'Brayan James',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: black_color),
              ),
              SizedBox(height: screenHeight * 0.04),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenWidth, screenHeight * 0.06),
                  backgroundColor: primary_color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.login_rounded,
                        color: white_color,
                      ),
                      Text(
                        '  Log Out',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
                   ),
         )
      ] ),
    );
  }
}
