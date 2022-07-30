import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  //final Function() selectHandler;
  final VoidCallback? selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey)),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
