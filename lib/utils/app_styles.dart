import 'package:flutter/material.dart';

Color primary = Colors.blueAccent;

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = Colors.deepOrange;

  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: textColor, fontWeight: FontWeight.w500
  );
  static TextStyle headerLineStyle1 = TextStyle(
      fontSize: 26, color: textColor, fontWeight: FontWeight.bold
  );
  static TextStyle headerLineStyle2 = TextStyle(
      fontSize: 21, color: textColor, fontWeight: FontWeight.bold
  );
  static TextStyle headerLineStyle3 = const TextStyle(
      fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold
  );
  static TextStyle headerLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500
  );
}