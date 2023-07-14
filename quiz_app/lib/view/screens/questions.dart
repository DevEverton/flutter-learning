import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import 'package:quiz_app/view/components/answer_button.dart';
import 'package:quiz_app/mock/questions_mock.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/view/screens/results.dart';

class Questions extends StatefulWidget {
  final Function(List<String> answers) answers;
  const Questions({super.key, required this.answers});

  @override
  State<Questions> createState() => _QuestionsState(answers);
}

class _QuestionsState extends State<Questions> {
  final List<String> selectedAnswers = [];
  final Function(List<String> answers) answers;
  var currenQuestionIndex = 0;

  _QuestionsState(this.answers);

  void choosedAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
      currenQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currenQuestionIndex >
        questionsMock[currenQuestionIndex].answers.length) {
      answers(selectedAnswers);
      return const Results(
        resultText: '15',
      );
    }
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
                    choosedAnswer(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
