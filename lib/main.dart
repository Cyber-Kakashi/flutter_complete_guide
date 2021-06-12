import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      if (questionIndex < 1) {
        questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question one?', 'Question 2?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Great title'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('This is a lambda function');
                print('this will execute');
              },
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
