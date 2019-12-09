import 'package:flutter/material.dart';
import 'dart:io';
import 'secretscreen.dart';
import 'updatenotesscreen.dart';

class Passwordscreen extends StatefulWidget {
  
  
  
  Passwordscreen({Key key}) : super(key: key);

  @override
  _PasswordscreenState createState() => _PasswordscreenState();
}

class _PasswordscreenState extends State<Passwordscreen> {
  TextEditingController emCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Username & Password"),
        backgroundColor: Color.fromARGB(0xff, 163, 22, 33)),
      body: Column(
        children: <Widget>[
          TextField(controller: emCtrl, decoration: InputDecoration(helperText: 'email'),),
          TextField(controller: passwordCtrl, decoration: InputDecoration(helperText: 'password'),),
              
              RaisedButton(
                  child: Text("Login",
                    style: TextStyle(
                      fontFamily: 'Cinzel Decorative',
                      color: Colors.white),
                  ),
                  color: Color.fromARGB(0xFF, 163, 21, 33),
                  
                  shape: CircleBorder(),
                
                  onPressed: () {
                    print("Success");
                    // Navigator.push(context,
                     // MaterialPageRoute(builder: (context) => sec()));
                
                  }),
        ],
      ),
    );
  }
}