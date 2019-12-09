import 'package:flutter/material.dart';
import 'lettertosanta.dart';
import 'passwordscreen.dart';

class secretscreen extends StatefulWidget {
  String updateNotesTitle = "Update Notes";
  String updateNotesBody = "Version Santa is coming to town and other important messages";
 

  secretscreen({Key key}) : super(key: key);

  @override
  _secretscreenState createState() => _secretscreenState();
}

class _secretscreenState extends State<secretscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Notes"),
        backgroundColor: Color.fromARGB(0xff, 163, 22, 33)),
      body: Column(
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
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Passwordscreen()));
              },)
            ],
          ),
        ],
      ),
    );

 
  }
}