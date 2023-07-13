import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../View/Components/quiz_button.dart';
import '../components/quiz_background.dart';
import '../components/quiz_image.dart';

class Home extends StatelessWidget {
  final Function() onPressed;

  const Home({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return QuizBackground(
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const QuizImage(
              imagePath: 'assets/images/quiz-logo.png',
              size: 300,
              opacity: 0.8),
          const SizedBox(
            height: 60,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          QuizButton(onPressed: onPressed, text: "Start quiz")
        ]),
      ),
    );
  }
}
