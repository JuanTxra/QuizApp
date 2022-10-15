import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = "You are so bad!";
    } else if (resultScore <= 12) {
      resultText = "You are... strange?!";
    } else if (resultScore <= 16) {
      resultText = "Pretty likeable";
    } else {
      resultText = "You are awesome and innocent!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz!"),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
