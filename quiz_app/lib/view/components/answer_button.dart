import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
