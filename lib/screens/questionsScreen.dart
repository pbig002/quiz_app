import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(text: currentQuestion.answers[0], ontap: () {}),
          AnswerButton(text: currentQuestion.answers[1], ontap: () {}),
          AnswerButton(text: currentQuestion.answers[2], ontap: () {}),
          AnswerButton(text: currentQuestion.answers[3], ontap: () {})
        ],
      ),
    );
  }
}
