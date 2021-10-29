import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

var rng = Random();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 150,
      fontWeight: FontWeight.w900,
    );
    const label = Text(
      'JA!',
      style: textStyle,
    );

    var buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.red),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(120),
              side: const BorderSide(color: Colors.red))),
      minimumSize: MaterialStateProperty.all(const Size(240, 240)),
    );
    var button = ElevatedButton(
      onPressed: () {
        var audioPlayer = AudioPlayer();
        var n = rng.nextInt(10);
        audioPlayer.play('./audio-files/short/' + n.toString() + '.m4a');
      },
      onLongPress: () {
        var audioPlayer = AudioPlayer();
        var n = rng.nextInt(3);
        audioPlayer.play('./audio-files/long/' + n.toString() + '.m4a');
      },
      child: null,
      autofocus: true,
      style: buttonStyle,
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          children: [label, button],
        )),
      ),
    );
  }
}
