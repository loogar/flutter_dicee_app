import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee App')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDice() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              changeDice();
            },
            child: Image.asset('images/dice$rightDiceNum.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                changeDice();
              });
            },
            child: Image.asset('images/dice$leftDiceNum.png'),
          ))
        ],
      ),
    );
  }
}
