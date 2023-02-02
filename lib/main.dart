import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/src/audioplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String musicName){
    final player=AudioPlayer();
    player.play(AssetSource(musicName));
  }

  Expanded buildKey(Color color,String musicName){
    return Expanded(child: TextButton(style:TextButton.styleFrom(
      backgroundColor:color,
    ),
      onPressed: (){
        final player=AudioPlayer();
        player.play(AssetSource(musicName));
      },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: new Container(
          padding: new EdgeInsets.fromLTRB(15,25,5,10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              buildKey(Colors.red,'note1.wav'),
              buildKey(Colors.blue,'note2.wav'),
              buildKey(Colors.yellow,'note3.wav'),
              buildKey(Colors.green,'note4.wav'),
              buildKey(Colors.white,'note5.wav'),
              buildKey(Colors.grey,'note6.wav'),
              buildKey(Colors.brown,'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
