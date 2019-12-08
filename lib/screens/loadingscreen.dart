import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;

  final double radius = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Container(
        width: 100.0,
        height: 100.0,
        child: Center(
          child: Stack(
            children: <Widget>[
              Dot(
                color: Colors.green,
                radius: 30.0,
              ),
              Transform.translate(
                offset: Offset(radius * cos(pi / 4), radius * sin(pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
              Transform.translate(
                offset:
                    Offset(radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
                child: Dot(radius: 5.0, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
