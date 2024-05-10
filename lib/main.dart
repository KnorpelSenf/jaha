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
      fontSize: 130,
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
              side: const BorderSide(color: Colors.redAccent))),
      minimumSize: MaterialStateProperty.all(const Size(240, 240)),
    );
    var button = ElevatedButton(
      onPressed: () async {
        var audioPlayer = AudioPlayer();
        var n = rng.nextInt(10);
        await audioPlayer.play(AssetSource('short-' + n.toString() + '.m4a'));
      },
      onLongPress: () async {
        var audioPlayer = AudioPlayer();
        var n = rng.nextInt(3);
        await audioPlayer.play(AssetSource('long-' + n.toString() + '.m4a'));
      },
      child: null,
      autofocus: true,
      style: buttonStyle,
    );

    return MaterialApp(
      title: 'Ja-Ja-Jaha MX',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          children: [button, label],
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
        )),
      ),
    );
  }
}
