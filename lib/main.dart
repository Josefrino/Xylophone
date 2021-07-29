import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: 'Xylophone',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(
      {required String buttonText,
      required int audioNumber,
      required Color buttonColor}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor)),
        onPressed: () {
          playSound(audioNumber);
        },
        child: Center(
          child: Text(
            buttonText,
            style: customText,
          ),
        ),
      ),
    );
  }

  TextStyle customText = TextStyle(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Center(child: Text('Xylophone')),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: [
          buildKey(
              buttonText: 'Note One', audioNumber: 1, buttonColor: Colors.red),
          buildKey(
              buttonText: 'Note Two',
              audioNumber: 2,
              buttonColor: Colors.orange),
          buildKey(
              buttonText: 'Note Three',
              audioNumber: 3,
              buttonColor: Colors.amber),
          buildKey(
              buttonText: 'Note Four',
              audioNumber: 4,
              buttonColor: Colors.green),
          buildKey(
              buttonText: 'Note Five',
              audioNumber: 5,
              buttonColor: Colors.blue),
          buildKey(
              buttonText: 'Note Six', audioNumber: 6, buttonColor: Colors.pink),
          buildKey(
              buttonText: 'Note Seven',
              audioNumber: 7,
              buttonColor: Colors.purple),
        ],
      ),
    );
  }
}
