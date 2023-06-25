import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questionsScreen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});
  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  var activeScreen = 'start-screen';

  @override
  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(54, 9, 132, 1),
                Color.fromRGBO(101, 48, 192, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
