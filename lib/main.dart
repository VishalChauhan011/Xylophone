import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color,int SoundNumber})
   {
    return Expanded(
      child: FlatButton(
      color: color,
    onPressed: (){
      playSound(SoundNumber);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red,SoundNumber: 1),
              buildkey(color: Colors.deepOrange,SoundNumber: 2),
              buildkey(color: Colors.yellowAccent,SoundNumber: 3),
              buildkey(color: Colors.green,SoundNumber: 4),
              buildkey(color: Colors.blueAccent,SoundNumber: 5),
              buildkey(color: Colors.deepPurple,SoundNumber: 6),
              buildkey(color: Colors.pinkAccent,SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
