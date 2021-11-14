// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Cow', 'score': 8},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 3},
        {'text': 'Rabbit', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite fruit ?',
      'answers': [
        {'text': 'Mango', 'score': 10},
        {'text': 'Apple', 'score': 3},
        {'text': 'Orange', 'score': 1},
        {'text': 'Grapes', 'score': 6}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[400],
        ),
        body: _questionIndex < questions.length
            ? Quiz(_questionIndex, _answerQuestion, questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
