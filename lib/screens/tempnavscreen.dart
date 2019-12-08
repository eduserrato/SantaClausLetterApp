import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'lettertosanta.dart';
import 'loadingscreen.dart';
import 'loginscreen.dart';

class TempNavScreen extends StatelessWidget {
  const TempNavScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temporary Navigation Screen"),

      ),
      body: Column(
        
        children: <Widget>[
        Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loading())
                    );
                  },
                  child: Text("Loading Screen"),
                ),

                RaisedButton(
                  onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: Text("Login Screen"),
                ),
                RaisedButton(
                  onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LetterScreen())
                    );
                  },
                  child: Text("Letter Screen"),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
    
  }
}