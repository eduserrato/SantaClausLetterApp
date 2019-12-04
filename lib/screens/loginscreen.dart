import 'package:flutter/material.dart';


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
        title: Text("Info")), 
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(controller: emailCtrl),
              TextField(controller: phoneCtrl, obscureText: true),
              RaisedButton(child: Text("Go"), 
              shape: CircleBorder(),
              color: Color.fromARGB(0xff, 8, 96, 95),
              onPressed: () {
                print("Success");
              }),
            ]
        ),
      ),
    );
  }
}