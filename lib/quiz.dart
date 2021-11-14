import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var _questionIndex;
  var _answerQuestion;
  var questions;
  Quiz(this._questionIndex, this._answerQuestion, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[_questionIndex]['questionText'].toString(),
        ),
        ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _answerQuestion(answer['score']),
              answer['text'].toString());
        }).toList()
      ],
    );
  }
}
