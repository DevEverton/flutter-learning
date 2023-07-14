import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/view/components/quiz_background.dart';

class Results extends StatelessWidget {
  final String resultText;
  const Results({super.key, required this.resultText});

  @override
  Widget build(context) {
    return QuizBackground(
        child: SizedBox.expand(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Your results!",
            style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 8,
        ),
        Text("$resultText points",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
      ]),
    ));
  }
}
