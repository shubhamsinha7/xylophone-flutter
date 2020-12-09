import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int sound_no)
  {
    final player=AudioCache();
    player.play('note$sound_no.wav');
  }
  Expanded set_button({Color color,int sound_no})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(sound_no);
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
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              set_button(color: Colors.red,sound_no: 1),
              set_button(color: Colors.teal,sound_no: 2),
              set_button(color: Colors.amber,sound_no: 3),
              set_button(color: Colors.green,sound_no: 4),
              set_button(color: Colors.cyan,sound_no: 5),
              set_button(color: Colors.deepOrange,sound_no: 6),
              set_button(color: Colors.pink,sound_no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
