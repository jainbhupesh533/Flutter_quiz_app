import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are PRETTY LIKEABLE!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... Strange?';
    } else {
      resultText = 'You are so bad!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FloatingActionButton(
            onPressed: resetHandler,
            tooltip: 'Reset',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
