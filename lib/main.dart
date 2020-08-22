import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything'),
            ),
          ),
          body: mainBody(),
        ),
      ),
    );

// ignore: camel_case_types
class mainBody extends StatefulWidget {
  @override
  _mainBodyState createState() => _mainBodyState();
}

// ignore: camel_case_types
class _mainBodyState extends State<mainBody> {
  int ballNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
