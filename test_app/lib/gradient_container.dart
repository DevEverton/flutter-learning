import 'package:flutter/cupertino.dart';
import 'package:test_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  final String text;
  final Color topLeftColor;
  final Color bottomRightColor;

  const GradientContainer(
      {super.key,
      required this.text,
      required this.topLeftColor,
      required this.bottomRightColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [topLeftColor, bottomRightColor])),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class DiceImage extends StatelessWidget {
  final String imagePath;

  const DiceImage({super.key, required this.imagePath});

  @override
  Widget build(Object context) {
    return Image.asset(
      imagePath,
      width: 200,
    );
  }
}

class RollDiceButton extends StatelessWidget {
  final Function() onRollDice;

  const RollDiceButton({super.key, required this.onRollDice()});

  @override
  Widget build(Object context) {
    return CupertinoButton.filled(
      padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
      onPressed: () {
        onRollDice();
      },
      child: const Text('Roll it!'),
    );
  }
}
