import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'This is the first question from the set?',
      'Second question is also great?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Great title'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer('Answer 1', _answerQuestions),
            Answer('Answer 2', _answerQuestions),
          ],
        ),
      ),
    );
  }
}
