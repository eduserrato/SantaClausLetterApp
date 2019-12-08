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
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  ButtonScreen({Key key}) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Temp Screen"),
      ),
      body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 child: Text("Login Page"),
                 onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                   
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 child: Text("Letter Page"),
                 onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LetterScreen()));
                   
                 },
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RaisedButton(
                 child: Text("Loading Page"),
                 onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoadingScreen()));
                   
                 },
               ),
             ),
           ],
         ),
      ),
    ),
    );
    
  }
}
