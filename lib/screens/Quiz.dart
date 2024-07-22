import 'package:flutter/material.dart';
import 'package:my_quizapp/data/quiz_questions.dart';
import 'package:my_quizapp/screens/QuizScreen.dart';
import 'package:my_quizapp/screens/ResultScreen.dart';
import "./StartScreen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // final String name;
  Widget? activeScreen;
  // var activeScreen = 'start-screen';

  List<String> selectedAnswers = [];

  void chooseAnswer(String value) {
    setState(() {
      selectedAnswers.add(value);

      if (selectedAnswers.length == questions.length) {
        setState(() {
          // selectedAnswers = [];
          activeScreen = ResultScreen(chooseAnswer: selectedAnswers);
        });
      }
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuizScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  @override
  Widget build(BuildContext context) {
    // Widget? screenWidget;

    // if (activeScreen == 'questions-screen') {
    //   screenWidget = QuizScreen();
    // } else {
    //   screenWidget = StartScreen(switchScreen);
    // }

    return Container(child: activeScreen);
  }
}
