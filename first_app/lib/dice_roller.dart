import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final _random = Random();

  final List<String> diceFaces = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png",
  ];

  static const width = 250.0;
  var activeDiceImage = Image.asset('assets/images/dice-1.png', width: width);

  void rollDice() {
    setState(() {
      activeDiceImage = Image.asset(
        diceFaces[_random.nextInt(diceFaces.length)],
        width: width,
      );
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        activeDiceImage,
        const SizedBox(
          height: 200.0,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll'),
        )
      ],
    );
  }
}
