import 'package:flutter/material.dart';

class QuizImage extends StatelessWidget {
  final String imagePath;
  final double size;
  final double opacity;

  const QuizImage(
      {super.key,
      required this.imagePath,
      required this.size,
      this.opacity = 1.0});

  @override
  Widget build(Object context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(
        imagePath,
        width: size,
      ),
    );
  }
}
