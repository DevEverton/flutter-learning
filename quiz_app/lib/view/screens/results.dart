import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import 'package:quiz_app/view/components/quiz_button.dart';

class Results extends StatelessWidget {
  final String resultText;
  const Results({super.key, required this.resultText});

  @override
  Widget build(context) {
    return QuizBackground(
        child: SizedBox.expand(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "You answered x out of y correctly!",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Text("$resultText points",
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24)),
        const SizedBox(
          height: 30,
        ),
        QuizButton(
          onPressed: () {},
          text: "Restart",
          iconData: Icons.restart_alt,
        )
      ]),
    ));
  }
}
