import 'package:flutter/material.dart';
import 'package:quiz_app/model/question.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import '../components/answer_button.dart';
import 'package:quiz_app/mock/questions_mock.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currenQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      currenQuestionIndex++;
    });
  }

  List<Widget> buildButtons(Question question) {
    List<Widget> list = [];
    for (var answer in question.answers) {
      list.addAll([
        AnswerButton(text: answer, onPressed: nextQuestion),
        const SizedBox(height: 12)
      ]);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var question = questionsMock[currenQuestionIndex];

    return QuizBackground(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              question.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(height: 16),
            ...question.getShuffledAnswers().map((answer) {
              return AnswerButton(text: answer, onPressed: nextQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
