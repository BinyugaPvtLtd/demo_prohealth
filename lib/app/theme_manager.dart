import 'package:flutter/material.dart';

class ThemeManager {
  static TextStyle customTextStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width / 150;
    return TextStyle(
      fontFamily: 'FiraSans',
      fontSize: fontSize,
      color: Color(0xFF686464),
      fontWeight: FontWeight.w400,
    );
  }
}

class ThemeManagerDark {
  static TextStyle customTextStyle(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width / 150;
    return TextStyle(
      fontFamily: 'FiraSans',
      fontSize: fontSize,
      color: Color(0xFF2A2827),
      fontWeight: FontWeight.w400,
    );
  }
}
