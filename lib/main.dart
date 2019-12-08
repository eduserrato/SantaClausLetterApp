import 'package:flutter/material.dart';
import 'package:santa_claus_letter/screens/loadingscreen.dart';

import 'package:santa_claus_letter/screens/loginscreen.dart';
import 'package:santa_claus_letter/screens/tempnavscreen.dart';
import 'package:santa_claus_letter/common/theme.dart';
import 'screens/lettertosanta.dart';
import 'package:flutter_mailer/flutter_mailer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go to respective pages',
      theme: appTheme,
      
      
     // home: LetterScreen(title: 'Letter Writting Home Page'),
      
      home: TempNavScreen(),
    );
    
  }
}
