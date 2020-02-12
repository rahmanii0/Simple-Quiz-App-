import 'package:flutter/material.dart';
import 'package:quiz_app/screens/result.dart';
import 'quiz.dart';




class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite Team?',
        'answers': ['Barca', 'realMadrid', 'MC', 'MU'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body:_questionIndex < _questions.length? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: _questions,):
        Result(),
      ),
    );
  }
}