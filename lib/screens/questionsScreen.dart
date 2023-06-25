import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Qiuz Screen",
    );
  }
}
