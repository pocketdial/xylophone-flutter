import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color colorItem, int soundNum}) {
    return Expanded(
      child: MaterialButton(
        color: colorItem,
        onPressed: () {
          playSound(soundNum);
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
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(colorItem: Colors.red, soundNum: 1),
              buildKey(colorItem: Colors.green, soundNum: 2),
              buildKey(colorItem: Colors.red, soundNum: 3),
              buildKey(colorItem: Colors.green, soundNum: 4),
              buildKey(colorItem: Colors.red, soundNum: 5),
              buildKey(colorItem: Colors.green, soundNum: 6),
              buildKey(colorItem: Colors.red, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
