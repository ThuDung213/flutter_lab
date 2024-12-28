import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _diceNumber = 1;

  void _rollDice() {
    setState(() {
      _diceNumber = Random().nextInt(6)+1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _rollDice,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: _getDiceFace(),
              ),
            )
        ],)
      )
    );
  }

  Widget _getDiceFace() {
    switch(_diceNumber) {
      case 1:
        return dice1();
      case 2:
        return dice2();
      case 3:
        return dice3();
      case 4:
        return dice4();
      case 5:
        return dice5();
      case 6:
        return dice6();
      default:
        return dice1();


    }
  }

  Widget dice1() {
    return Stack(
      children: [
        Positioned(
          left: 80,
          top: 80,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
          )
        )
      ],
    );
  }

  Widget dice6() {
    return Stack(
      children: [
        Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            left: 20,
            bottom  : 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            left: 20,
            bottom: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),

      ],
    );
  }

  Widget dice2() {
    return Stack(
      children: [
        Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
      ],
    );
  }

  Widget dice3() {
    return Stack(
      children: [
        Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 80,
            bottom: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
      ],
    );
  }

  Widget dice4() {
    return Stack(
      children: [
        Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            left: 20,
            bottom  : 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
      ],
    );
  }

  Widget dice5() {
    return Stack(
      children: [
        Positioned(
            left: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            left: 20,
            bottom  : 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            top: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),
        Positioned(
            right: 80,
            bottom: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
            )
        ),

      ],
    );
  }
}
