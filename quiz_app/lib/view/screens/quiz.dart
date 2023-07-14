import 'package:flutter/material.dart';
import 'home.dart';
import 'questions.dart';

enum Screens {
  home,
  questions,
  result,
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Screens activeScreen = Screens.home;

  void switchScreen() {
    setState(() {
      activeScreen = Screens.questions;
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == Screens.home
        ? Home(onPressed: switchScreen)
        : Questions(answers: (answers) {
            selectedAnswers = answers;
          });

    return MaterialApp(
      home: screenWidget,
    );
  }
}
