import 'package:flutter/material.dart';
import 'package:my_quizapp/data/quiz_questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chooseAnswer});
  final List<String> chooseAnswer;

  List<Map<String, Object>> getsummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correctAnswer": chooseAnswer[i],
        "userAnswer": chooseAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getsummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return const Text("hello world");
  }
}
