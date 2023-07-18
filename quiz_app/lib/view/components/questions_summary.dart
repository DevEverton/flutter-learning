import 'package:flutter/cupertino.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
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
        ),
      ),
    );
  }
}
