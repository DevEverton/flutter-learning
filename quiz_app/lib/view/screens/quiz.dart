import 'package:flutter/material.dart';
import 'home.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "home-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == "home-screen"
        ? Home(onPressed: switchScreen)
        : const Questions();

    return MaterialApp(
      home: screenWidget,
    );
  }
}
