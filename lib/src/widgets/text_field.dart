
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class textField_widget extends StatelessWidget {
  const textField_widget({
    super.key,
    required this.title,
    this.isobsecure, required this.hint,
  });

  final String title;
  final String hint;
  final bool? isobsecure;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, color: grey_text_color, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: screenHeight*0.005,),
        TextField(
          obscureText: isobsecure ?? false,
          decoration: InputDecoration(
            fillColor: field_color,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: field_color),
              borderRadius: BorderRadius.circular(12.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: field_color),
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: field_color),
              borderRadius: BorderRadius.circular(12.0),
            ),
            border: OutlineInputBorder(
              borderSide:  BorderSide(color: field_color),
              borderRadius: BorderRadius.circular(12.0),
            ),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 14, color: hint_color, fontWeight: FontWeight.w400)
          ),
        ),
      ],
    );
  }
}