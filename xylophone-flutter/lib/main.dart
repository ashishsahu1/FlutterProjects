import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded soundBut({Color color, int x}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(x);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              soundBut(color: Colors.red, x: 1),
              soundBut(color: Colors.blue, x: 2),
              soundBut(color: Colors.green, x: 3),
              soundBut(color: Colors.yellowAccent, x: 4),
              soundBut(color: Colors.purpleAccent, x: 5),
              soundBut(color: Colors.indigo, x: 6),
              soundBut(color: Colors.orange, x: 7),
            ],
          ),
        ),
      ),
    ));
  }
}

/**/
