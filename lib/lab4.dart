import 'dart:math';

import 'package:flutter/material.dart';

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(title: Text("Magic 8 Ball"), backgroundColor: Colors.grey[800], elevation: 0, centerTitle: true,),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(4) + 1;
        });
      }, child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}

