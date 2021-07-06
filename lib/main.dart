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
      {
        'question': 'This is the first question from the set, cool?',
        'answer': ['one', 'two', 'three', 'four'],
      },
      {
        'question': 'Second question is also great?',
        'answer': ['five', 'six', 'seven', 'eight']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Great title'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answer'] as List<String>).map((ans) {
              return Answer(ans, _answerQuestions);
            }).toList()
          ],
        ),
      ),
    );
  }
}
