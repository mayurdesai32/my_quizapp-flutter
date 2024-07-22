import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:my_quizapp/screens/Quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 50, 4, 158),
            foregroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Flutter Demo',
              // style: TextStyle(backgroundColor: Colors.green),
            ),
          ),
          body: Quiz()),
    );
  }
}
