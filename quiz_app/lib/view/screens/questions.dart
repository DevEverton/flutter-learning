import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import '../components/question_button.dart';
import 'package:quiz_app/mock/questions_mock.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var question = questionsMock[1];
  @override
  Widget build(BuildContext context) {
    return QuizBackground(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textAlign: TextAlign.center,
              question.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(height: 16),
            QuestionButton(text: question.answers[0], onPressed: () {}),
            const SizedBox(height: 12),
            QuestionButton(text: question.answers[1], onPressed: () {}),
            const SizedBox(height: 12),
            QuestionButton(text: question.answers[2], onPressed: () {}),
            const SizedBox(height: 12),
            QuestionButton(text: question.answers[3], onPressed: () {}),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
