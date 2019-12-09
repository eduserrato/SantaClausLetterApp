import 'package:flutter/material.dart';
import 'package:santa_claus_letter/common/theme.dart';
import 'package:santa_claus_letter/screens/loginscreen.dart';
import 'package:santa_claus_letter/screens/tempnavscreen.dart';

class LetterScreen extends StatefulWidget {
  LetterScreen({Key key}) : super(key: key);

  @override
  _LetterScreenState createState() => _LetterScreenState();
}

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "http://trail.pugetsound.edu/wp-content/uploads/2010/12/Jonathan_G_Meath_portrays_Santa_Claus.jpg"),
            fit: BoxFit.contain,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}

class _LetterScreenState extends State<LetterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Letter'),
        backgroundColor: Color.fromARGB(0xff, 163, 22, 33),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 40,
              child: Text(
                "Dear Santa,",
                style: TextStyle(
                  fontFamily: 'Tangerine',
                  fontSize: 40,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 500,
               child: TextField(
                   maxLines: 50,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Write here your letter to Santa.',
                   )),
             ),
           ),
           RaisedButton(
             color: Color.fromARGB(0xFF, 163, 21, 33),
             textColor: Colors.white,
             child: Text("Send to Santa"),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => TempNavScreen()
               ));
             },
           ),
        ],
      ),
      
      
    );
  }
}
