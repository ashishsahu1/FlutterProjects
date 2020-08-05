import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note4.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.purpleAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note5.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.cyanAccent,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note6.wav');
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note7.wav');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

/**/
