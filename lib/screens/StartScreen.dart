import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  // final VoidCallback startQuiz;
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: double.infinity,
      color: const Color.fromARGB(255, 62, 2, 175),
      child: Column(
        children: [
          const Text("Start Screen", textAlign: TextAlign.center),
          const Spacer(),
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              "assert/quiz.jpg",
            ),
          ),
          // Spacer(flex: 3)
          const Padding(padding: EdgeInsets.only(top: 50)),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              splashFactory: InkRipple.splashFactory,
              foregroundColor: Colors.black,
              backgroundColor: Color.fromARGB(187, 105, 153, 204),
            ),
            onPressed: () {
              startQuiz();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Start The Quiz",
                style: TextStyle(
                    // color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
