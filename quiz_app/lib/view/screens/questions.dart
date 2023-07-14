import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import 'package:quiz_app/view/components/answer_button.dart';
import 'package:quiz_app/mock/questions_mock.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/view/screens/results.dart';

class Questions extends StatefulWidget {
  final Function(List<String> answers) didFinishSelectAllAnswers;
  const Questions({super.key, required this.didFinishSelectAllAnswers});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final List<String> selectedAnswers = [];
  var currenQuestionIndex = 0;

  void goNextQuestion() {
    setState(() {
      currenQuestionIndex++;
    });
  }

  void answerHandler(String answer) {
    selectedAnswers.add(answer);
    if (currenQuestionIndex >= questionsMock.length - 1) {
      widget.didFinishSelectAllAnswers(selectedAnswers);
    } else {
      goNextQuestion();
    }
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
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...question.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  text: answer,
                  onPressed: () {
                    answerHandler(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
