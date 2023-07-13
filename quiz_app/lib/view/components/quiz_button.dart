import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.lato(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
      ),
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
    );
  }
}
