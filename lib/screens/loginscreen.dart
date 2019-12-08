import 'package:flutter/material.dart';
import 'package:santa_claus_letter/common/theme.dart';

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
      appBar: AppBar(title: Text("Info")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(controller: emailCtrl),
              
              TextField(controller: phoneCtrl, obscureText: true),
              RaisedButton(
                  child: Text("Go",
                  ),
                  shape: CircleBorder(),
                
                  onPressed: () {
                    print("Success");
                  }),
            ]),
      ),
    );
  }
}
