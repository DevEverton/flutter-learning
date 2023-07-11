import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/quiz_background.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return const QuizBackground(
        child: Center(
      child: Text("Questions Screen"),
    ));
  }
}
