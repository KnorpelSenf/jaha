import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
        // Respond to button press
        print('Yay');
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
