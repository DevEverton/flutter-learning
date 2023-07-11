import 'package:flutter/material.dart';
import 'home.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen = Home(onPressed: switchScreen);

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: activeScreen,
    );
  }
}
