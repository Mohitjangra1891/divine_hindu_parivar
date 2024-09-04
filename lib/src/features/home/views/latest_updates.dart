import 'package:divine_hindu_parivar/src/utils/imges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../profile/views/profile.dart';
import 'event_screen.dart';

class LatestUpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Placeholder data - this would come from an API
    final upcomingEvents = [
      {"title": "Garba Dance", "date": "7th September, Saturday", "time": "5PM to 10PM", "image": event_bg},
      {"title": "Ganesh Puja", "date": "Dates", "time": "Times", "image": event_bg},
    ];

    final upcomingFestivals = [
      {"title": "Durga Puja", "date": "Dates", "time": "Times", "image": event_bg},
      {"title": "Laxmi Puja", "date": "Dates", "time": "Times", "image": event_bg},
    ];

    final newsUpdates = [
      {"title": "Holy Vedas", "description": "Indeed, Vedas hold a central & revered position.......", "image": event_bg},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary_color,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(app_logo , height: 22 ,width: 22,),
            SizedBox(height: screenHeight * 0.02),
            const Text(' Latest Updates', style: TextStyle(color: Colors.white, fontSize: 24 ,fontWeight: FontWeight.w500)),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_Screen()));

              },
              child: Container(

                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),

                child: Center(child: Icon(Icons.person ,color: primary_color ,size: 22,)),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03, vertical: screenHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Upcoming Events Section
              SectionTitle(title: "Upcoming Events", icon: Icons.event, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.02),
              ...upcomingEvents.map((event) => event_tile(
                title: event['title']!,
                date: event['date']!,
                time: event['time']!,
                image: event['image']!,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              )).toList(),

              // Upcoming Festivals Section
              SizedBox(height: screenHeight * 0.04),
              SectionTitle(title: "Upcoming Festivals", icon: Icons.festival, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.02),
              ...upcomingFestivals.map((festival) => event_tile(
                title: festival['title']!,
                date: festival['date']!,
                time: festival['time']!,
                image: festival['image']!,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              )).toList(),

              // News Updates Section
              SizedBox(height: screenHeight * 0.04),
              SectionTitle(title: "News Updates", icon: Icons.newspaper, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.02),
              ...newsUpdates.map((news) => event_tile(
                title: news['title']!,
                date: news['description']!,
                image: news['image']!,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              )).toList(),

              // // Footer
              // SizedBox(height: screenHeight * 0.04),
              // Center(
              //   child: Text(
              //     "DivineHinduParivar.org",
              //     style: TextStyle(color: Colors.grey, fontSize: screenWidth * 0.04),
              //   ),
              // ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final double screenWidth;

  const SectionTitle({
    required this.title,
    required this.icon,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: primary_color, size: 20),
        SizedBox(width: screenWidth * 0.01),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: black_color
          ),
        ),
      ],
    );
  }
}


class event_tile extends StatelessWidget {
  final String title;
  final String date;
  final String? time;
  final String image;
  final double screenWidth;
  final double screenHeight;

  const event_tile({
    required this.title,
    required this.date,
     this.time,
    required this.image,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>NavaratriEventScreen()));
},
      child: Container(
        // height: screenHeight*0.08,
        margin: EdgeInsets.symmetric(vertical: screenHeight*0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal:  screenHeight*0.02 ,vertical:  screenHeight*0.01),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Person image on the left
            Container(
              height: screenWidth*0.18,
              width: screenWidth*0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              ),
            ),

            SizedBox(width: screenHeight*0.01,), // Space between  the image and the text column
            // Column with two lines of text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: black_color
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    date,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      color: black_light_color,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    time?? '',
                    style: const TextStyle(
                      fontSize: 11,
                      color: black_light_color,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenHeight*0.01,),          const Center(
              child: Icon(
                CupertinoIcons.arrow_right_circle_fill,
                color: primary_color,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
