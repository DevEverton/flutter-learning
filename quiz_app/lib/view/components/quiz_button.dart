import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const QuizButton({super.key, required this.onPressed(), required this.text});

  @override
  Widget build(Object context) {
    return OutlinedButton.icon(
      onPressed: () {
        onPressed();
      },
      label: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
    );
  }
}
