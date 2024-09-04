import 'package:divine_hindu_parivar/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/imges.dart';

class NavaratriEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Placeholder data - this would come from an API
    final eventTitle = "Outdoor Navaratri Garba";
    final eventDate = "7th September · Saturday · 5PM to 10PM";
    final eventLocation = "Dee Park 9229 Emenson St. Des Plaines Is 60016";
    final aboutEvent =
        "Enjoy The Garba Dance. Book your tickets at major indian grocery stores. Under 13 Kids Free Tickets. There will be 3 best prizes of -";
    final prizeList = [
      "Winner For The Best Garba performer Male",
      "Winner For The Best Garba performer Female",
      "Winner For The Best Costume",
    ];
    final website = "www.divinehinduparivar.org";
    final phone = "224-804-1497";
    final email = "info@divinehinduparivar.org";
    final restrictionNote = "RESTRICTED ADMISSION - PRIVATE CULTURAL PROGRAM\nNO ALCOHOL - NO TOBACCO";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          height: screenHeight * 0.25,
                          width: screenWidth,
                          decoration: const BoxDecoration(
                            // color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage(event_bg), // Example image path
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))),
                          child: Padding(
                            padding: EdgeInsets.all(screenHeight * 0.03),
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Event Details",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white_color),
                                ),
                                SizedBox(height: screenHeight * 0.02),
                                Text(
                                  "Divine Hindu Parivar",
                                  style: TextStyle(
                                    color: primary_color,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  "Present",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white_color),
                                ),
                              ],
                            ),
                          )),

                      // Event Details Section
                      Container(
                        // height: screenHeight * 0.75,
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                eventTitle,
                                style: const TextStyle(
                                  color: black_color,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today,
                                    color: primary_color,
                                    size: 12,
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Expanded(
                                    child: Text(
                                      eventDate,
                                      style: const TextStyle(
                                        color: black_light_color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.015),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: primary_color,
                                    size: 12,
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Expanded(
                                    child: Text(
                                      eventLocation,
                                      style: const TextStyle(
                                        color: black_light_color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: screenHeight * 0.02),
                              Divider(height: screenHeight * 0.005, thickness: 0.5),
                              SizedBox(height: screenHeight * 0.02),
                              // About the Event Section
                              const Text(
                                "About The Events",
                                style: TextStyle(
                                  color: black_color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Text(
                                aboutEvent,
                                style: const TextStyle(
                                  color: black_light_color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: prizeList.map((prize) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle,
                                            color: primary_color,
                                            size: 12,
                                          ),
                                          SizedBox(width: screenWidth * 0.01),
                                          Expanded(
                                            child: Text(
                                              prize,
                                              style: const TextStyle(
                                                color: black_light_color,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                    ],
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Divider(height: screenHeight * 0.005, thickness: 0.5),
                              SizedBox(height: screenHeight * 0.02),

                              // For More Information Section
                              const Text(
                                "For More Information :",
                                style: TextStyle(
                                  color: black_color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.web,
                                        color: primary_color,
                                        size: 12,
                                      ),
                                      SizedBox(width: screenWidth * 0.01),
                                      Text(
                                        website,
                                        style: const TextStyle(
                                          color: black_light_color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: screenWidth * 0.015),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.phone,
                                        color: primary_color,
                                        size: 12,
                                      ),
                                      SizedBox(width: screenWidth * 0.01),
                                      Text(
                                        phone,
                                        style: const TextStyle(
                                          color: black_light_color,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: screenHeight * 0.015),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.email,
                                    color: primary_color,
                                    size: 12,
                                  ),
                                  SizedBox(width: screenWidth * 0.01),
                                  Expanded(
                                    child: Text(
                                      email,
                                      style: const TextStyle(
                                        color: black_light_color,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: screenHeight * 0.0),
                              // Footer Note
                              // Container(
                              //   decoration: const BoxDecoration(
                              //       color: primary_color, borderRadius: BorderRadius.all(Radius.circular(12))),
                              //   padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                              //   alignment: Alignment.center,
                              //   child: Text(
                              //     restrictionNote,
                              //     textAlign: TextAlign.center,
                              //     style: const TextStyle(
                              //       color: white_color,
                              //       fontWeight: FontWeight.w700,
                              //       fontSize: 10,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(screenHeight * 0.03),
              child: Container(
                // height: screenHeight*0.06,
                decoration:
                    const BoxDecoration(color: primary_color, borderRadius: BorderRadius.all(Radius.circular(12))),
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                alignment: Alignment.center,
                child: Text(
                  restrictionNote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: white_color,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            // Header Image
          ],
        ),
      ),
    );
  }
}
