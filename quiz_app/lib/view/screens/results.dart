import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/view/components/quiz_background.dart';
import 'package:quiz_app/view/components/quiz_button.dart';
import 'package:quiz_app/mock/questions_mock.dart';

class Results extends StatelessWidget {
  final List<String> selectedAnswers;
  final Function() didTapRestart;
  const Results(
      {super.key, required this.didTapRestart, required this.selectedAnswers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionsMock[i].text,
        'correct_answer': questionsMock[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  (int, int) getResult() {
    var summary = getSummaryData();
    var numberOfCorrectAnswers = summary
        .where((element) => element['correct_answer'] == element['user_answer'])
        .length;

    return (numberOfCorrectAnswers, summary.length);
  }

  @override
  Widget build(context) {
    (int, int) result = getResult();
    int correctAnswers = result.$1;
    int totalAnswers = result.$2;

    return QuizBackground(
        child: SizedBox.expand(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "You answered $correctAnswers out of $totalAnswers correctly!",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        QuestionsSummary(summaryData: getSummaryData()),
        const SizedBox(
          height: 30,
        ),
        QuizButton(
          onPressed: didTapRestart,
          text: "Restart",
          iconData: Icons.restart_alt,
        )
      ]),
    ));
  }
}

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data) {
        return Row(mainAxisSize: MainAxisSize.min, children: [
          Text(((data["question_index"] as int) + 1).toString()),
          Expanded(
            child: Column(
              children: [
                Text((data["question"] as String)),
                Text((data["correct_answer"] as String)),
                Text((data["user_answer"] as String))
              ],
            ),
          )
        ]);
      }).toList(),
    );
  }
}
