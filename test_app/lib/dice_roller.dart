import 'package:flutter/material.dart';
import 'package:test_app/gradient_container.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var _randomNumber = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DiceImage(imagePath: 'assets/images/dice-$_randomNumber.png'),
        const SizedBox(
          height: 20,
        ),
        RollDiceButton(
          onRollDice: rollDice,
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      _randomNumber = Random().nextInt(6) + 1;
    });
  }
}
