import 'package:flutter/material.dart';
import 'package:santa_claus_letter/screens/loadingscreen.dart';

import 'package:santa_claus_letter/screens/loginscreen.dart';

import 'screens/lettertosanta.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go to respective pages',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
     // home: LetterScreen(title: 'Letter Writting Home Page'),
      home: Loading(),
    );
    
  }
}
