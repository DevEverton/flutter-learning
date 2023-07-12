import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AnswerButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(context) {
    return FilledButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.all(12),
        ),
        fixedSize: MaterialStatePropertyAll(Size(320, 60)),
        backgroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
