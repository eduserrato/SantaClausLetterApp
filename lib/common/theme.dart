import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primaryColor: treeGreen,
  buttonColor: santaRed,
  accentColor: darkGrey,
  textTheme: TextTheme(
    title: TextStyle(
      fontFamily: 'Cinzel Decorative',
      fontSize: 24,
    ),
    button: TextStyle(
      fontFamily: 'Tangerine',
      fontStyle: FontStyle.normal,
      fontSize: 16,
    ),
    
  ),
);

Color santaRed = const Color(0xa31621); 
Color treeGreen = const Color(0x08605f); 
Color darkGrey = const Color(0x2f4550); 