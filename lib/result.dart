import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  var _resetQuiz;
  Result(this.resultScore, this._resetQuiz);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore <= 8)
      resultText = "You are Strange";
    else if (resultScore <= 12)
      resultText = "Preety Likeable";
    else
      resultText = "You are Awesome and Innocent";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.redAccent),
            ),
            onPressed: _resetQuiz,
            icon: Icon(
              Icons.restart_alt,
            ),
            label: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
