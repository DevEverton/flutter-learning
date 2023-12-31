import 'package:flutter/material.dart';
import 'package:quiz_app/view/screens/results.dart';
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
      if (activeScreen == Screens.result) {
        activeScreen = Screens.home;
      } else {
        activeScreen =
            selectedAnswers.isEmpty ? Screens.questions : Screens.result;
      }
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget;
    switch (activeScreen) {
      case Screens.questions:
        screenWidget = Questions(didFinishSelectAllAnswers: (answers) {
          selectedAnswers = answers;
          switchScreen();
        });
        break;
      case Screens.result:
        screenWidget = Results(
          didTapRestart: () {
            selectedAnswers = [];
            switchScreen();
          },
          selectedAnswers: selectedAnswers,
        );
        break;
      default:
        screenWidget = Home(onPressed: switchScreen);
        break;
    }

    return MaterialApp(
      home: screenWidget,
    );
  }
}
