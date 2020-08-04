import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('Paper Scissor Rock'),
          backgroundColor: Colors.blueAccent,
        ),*/
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover)),
            child: Game(),
          ),
        ),
      ),
    ),
  );
}

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int inp = 1, cmp = 1;
  int uscore = 1, cscore = 1;
  String str = 'Paper Scissor Rock';

  void score() {
    if (inp == 1 && cmp == 2) {
      uscore = uscore + 1;
    } else if (inp == 1 && cmp == 3) {
      cscore = cscore + 1;
    } else if (inp == 2 && cmp == 1) {
      cscore = cscore + 1;
    } else if (inp == 2 && cmp == 3) {
      uscore = uscore + 1;
    } else if (inp == 3 && cmp == 1) {
      uscore = uscore + 1;
    } else if (inp == 3 && cmp == 2) {
      cscore = cscore + 1;
    }
  }

  void check() {
    if (uscore == 5) {
      str = 'Player won';
      uscore = 1;
      cscore = 1;
    }
    if (cscore == 5) {
      str = 'Computer won';
      uscore = 1;
      cscore = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            str,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
          SizedBox(
            child: Divider(
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Image(
                      image: AssetImage('images/sun$uscore.png'),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Image(
                      image: AssetImage('images/moon$cscore.png'),
                    ),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    'Player Score',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Computer Score',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(60),
                    child: Image(
                      image: AssetImage('images/sym$inp.png'),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(60),
                    child: Image(
                      image: AssetImage('images/sym$cmp.png'),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 160,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          inp = 1;
                          cmp = Random().nextInt(3) + 1;
                          score();
                          check();
                          print(uscore);
                          print(cscore);
                        });
                      },
                      child: Image(
                        image: AssetImage('images/button2.png'),
                      ),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        inp = 2;
                        cmp = Random().nextInt(3) + 1;
                        score();
                        check();
                        print(uscore);
                        print(cscore);
                      });
                    },
                    child: Image(
                      image: AssetImage('images/button3.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        inp = 3;
                        cmp = Random().nextInt(3) + 1;
                        score();
                        check();
                        print(uscore);
                        print(cscore);
                      });
                    },
                    child: Image(
                      image: AssetImage('images/button1.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '©Ashish',
            style: TextStyle(fontSize: 20, color: Colors.white12),
          )
        ]),
      ),
    );
  }
}
