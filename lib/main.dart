import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "8 Ball",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: Colors.black54,
          ),
          body: MagicBall(),
          backgroundColor: Colors.black26,
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var magicNumber = 1;

  void changeFate() {
    setState(() {
      magicNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Title(
            color: Colors.red,
            child: Text(
              "Ask me a question",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFate();
              },
              child: Image.asset("images/ball$magicNumber.png"),
            ),
          )
        ],
      ),
    );
  }
}
