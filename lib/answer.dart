import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.redAccent),
        ),
        onPressed: selectHandler,
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
