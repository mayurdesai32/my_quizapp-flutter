import 'package:flutter/material.dart';
import 'package:my_quizapp/data/quiz_questions.dart';
import 'package:my_quizapp/screens/AnswerButton.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.onSelectAnswer});

  final void Function(String value) onSelectAnswer;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentIndex++; // increments the value by 1
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

    return Container(
      width: double.infinity,
      height: double.maxFinite,
      color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "${currentIndex + 1} out of ${questions.length}",
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 24, 7, 219)),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            currentQuestion.text,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ...currentQuestion.answer.map((ele) {
            return AnswerButton(
                answerText: ele,
                onTap: () {
                  answerQuestion(ele);
                  print(ele);
                });
          })
        ],
      ),
    );
  }
}
