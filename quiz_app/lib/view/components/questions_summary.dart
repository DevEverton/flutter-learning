import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            bool isRight = data['correct_answer'] == data['user_answer'];
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleQuestionNumber(
                  isRight: isRight,
                  numberText: ((data["question_index"] as int) + 1).toString()),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (data["question"] as String),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      (data["correct_answer"] as String),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 204, 200, 200),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      (data["user_answer"] as String),
                      style: TextStyle(
                          color: isRight
                              ? const Color.fromARGB(255, 72, 102, 1)
                              : const Color.fromARGB(255, 127, 17, 3),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    )
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

class CircleQuestionNumber extends StatelessWidget {
  final bool isRight;
  final String numberText;
  const CircleQuestionNumber(
      {super.key, required this.isRight, required this.numberText});

  @override
  Widget build(context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: isRight
              ? const Color.fromARGB(255, 182, 205, 130)
              : const Color.fromARGB(255, 235, 162, 153),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            numberText,
            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
