import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topLeft,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          elevation: 4,
          shadowColor: const Color.fromARGB(255, 11, 1, 14),
          fixedSize: const Size.fromWidth(
            double.maxFinite,
          ),
          // fixedSize: const Size(double.maxFinite, 63),
          backgroundColor: const Color.fromARGB(255, 50, 4, 158),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
