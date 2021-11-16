import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent[700],
        appBar: AppBar(
          title: Text('Let\'s Roll Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  changeState();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                  'images/dice$leftDiceNumber.png'
                  ),
                ),
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  changeState();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                  'images/dice$rightDiceNumber.png'
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
