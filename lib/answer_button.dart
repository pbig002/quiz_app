import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.ontap});
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[0];
    return ElevatedButton(
      onPressed: ontap,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: Color.fromARGB(255, 67, 7, 122),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
