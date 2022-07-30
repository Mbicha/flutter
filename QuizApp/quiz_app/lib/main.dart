import 'package:flutter/material.dart';

import './results.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text':'Blue', 'score':8},
        {'text':'Pink', 'score':7},
        {'text':'Green', 'score':10},
        {'text':'Red', 'score':2}
      ]
    },
    {
      'questionText': 'What\'s your favorite pet?',
      'answers': [
        {'text':'Cat', 'score': 10},
        {'text':'Dog', 'score': 6},
        {'text':'Donkey', 'score': 9},
        {'text':'Rabbit', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your favorite actress?',
      'answers': [
        {'text':'Beyonce', 'score': 9},
        {'text':'Rihanna', 'score': 9},
        {'text':'Ariana Grade', 'score': 9},
        {'text':'Nick Minaj', 'score': 9}
      ]
    },
    {
      'questionText': 'Where do you live?',
      'answers': [
        {'text':'Kisumu', 'score': 8},
        {'text':'Nairobi', 'score':9},
        {'text':'Mombasa', 'score': 7},
        {'text':'Nakuru', 'score': 7}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length){
      print("You did it");
    }
  }

  void _resetQuiz(){
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
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
          ? Quiz(
            questions: _questions,
            questionIndex: _questionIndex,
            answerQuestion:_answerQuestion)
            : Results(_totalScore, _resetQuiz),
      ),
    );
  }
}