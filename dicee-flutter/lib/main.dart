import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Roll'),
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
  int dice1number = 1;
  int dice2number = 1;

  void diceChange() {
    dice1number = Random().nextInt(6);
    dice1number = dice1number + 1;
    dice2number = Random().nextInt(6);
    dice2number = dice2number + 1;
    //print(dice1number);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        diceChange();
                      });
                    },
                    child: Image.asset('images/dice$dice1number.png')),
              )),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      diceChange();
                    });
                    //print(dice2number);
                  },
                  child: Image.asset('images/dice$dice2number.png')),
            ),
          ),
        ],
      ),
    );
  }
}
