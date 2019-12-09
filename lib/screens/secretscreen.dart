import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'lettertosanta.dart';
import 'loadingscreen.dart';
import 'loginscreen.dart';
import 'updatenotesscreen.dart';

class SecretScreen extends StatefulWidget {
  SecretScreen({Key key}) : super(key: key);

  @override
  _SecretScreenState createState() => _SecretScreenState();
}

class _SecretScreenState extends State<SecretScreen> {
  List<String> letters = ['Dear Santa Ive been very good and I want a pony', 'Dear Santa, nevermind ponys are lame. I want a spaceship.']; 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Santa Letters"),
        backgroundColor: Color.fromARGB(0xff, 163, 22, 33)),
      body: Center(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(letters[0]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                child: Text(letters[1], 
                  style: TextStyle(
                  fontFamily: 'Coming Soon',
                  fontSize: 40,),
              ),
            )
            )],
        ),
      )
      ); /* Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Recent Update Notes'),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Text('This is where parents can find all recent changes to the app'),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('See Update'),
              onPressed: () {
                Navigator.pop(context);
              })],
          ),
        ],
      ),

    ); */
  }
}

