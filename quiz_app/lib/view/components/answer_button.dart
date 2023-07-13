import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AnswerButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: FilledButton(
        onPressed: onPressed,
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          ),
          backgroundColor: MaterialStatePropertyAll(Colors.black),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal, fontSize: 16),
        ),
      ),
    );
  }
}
