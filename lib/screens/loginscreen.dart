import 'package:flutter/material.dart';
import 'package:santa_claus_letter/common/theme.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'dart:async';
import 'dart:io';
import 'loadingscreen.dart';
import 'lettertosanta.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add email"),
        backgroundColor: Color.fromARGB(0xff, 163, 22, 33)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(controller: emailCtrl, decoration: InputDecoration(helperText: 'email'),),
              
              
              RaisedButton(
                  child: Text("Go",
                    style: TextStyle(
                      fontFamily: 'Cinzel Decorative',
                      color: Colors.white),
                  ),
                  color: Color.fromARGB(0xFF, 163, 21, 33),
                  
                  shape: CircleBorder(),
                
                  onPressed: () {
                    print("Success");
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loading()));
                
                  }),
            ]),
      ),
    );
  }
}
