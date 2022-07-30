import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;

  final Function() resetHandler;

  Results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 18){
      resultText = "You are weird";
    } else if (resultScore > 18 && resultScore <= 30){
      resultText = "You are Average";
    } else if (resultScore > 30){
      resultText = "Wow! You are amazing";
    } else{
      resultText = "You are really weird";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget> [
           Text(
              resultPhrase,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              textAlign: TextAlign.center,
          ),
            TextButton(
                onPressed: resetHandler,
                child: Text("Restart Quiz!"),
            ),
        ],
      ),
    );
  }
}

