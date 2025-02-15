import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Xylophone"), elevation: 0, centerTitle: true,),
      body: XylophonePage(),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophoneState();
}

class _XylophoneState extends State<XylophonePage> {
  final player = AudioPlayer();

  void playSound(String fileName) {
    player.play(AssetSource(fileName));
  }

  Widget buildKey({required Color color, required String soundFile}) {
    return Expanded(
        child: TextButton(
            onPressed: () => playSound(soundFile),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Container(
              width: double.infinity,
              color: color,
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
          children: [
            buildKey(color: Colors.red, soundFile: 'a3.mp3'),
            buildKey(color: Colors.orange, soundFile: 'a3.mp3'),
            buildKey(color: Colors.blue, soundFile: 'a3.mp3'),
            buildKey(color: Colors.purple, soundFile: 'a3.mp3'),
            buildKey(color: Colors.green, soundFile: 'a3.mp3'),
            buildKey(color: Colors.yellow, soundFile: 'a3.mp3'),
          ],
        ));
  }
}

