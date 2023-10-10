import 'package:first_project1/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void _resetState(){
    setState(() {
      _questionIndex = 0;
      _totalScore=0;
    });
  }

  var _questionIndex = 0;
  var _totalScore=0;
  void answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print("answer chosen !");
  }

  final questiion = const [
    {
      'questiontext': ' What Is Always Coming But Never Arrives?',
      'answertext': [
        {'text': 'Tomorrow', 'score': 1},
        {'text': 'Yesterday', 'score': 0},
        {'text': 'Today', 'score': 0},
        {'text': 'None of above', 'score': 0}
      ]
    },
    {
      'questiontext': 'What Cant Be Used Until It Is Broken?',
      'answertext': [
        {'text': 'Orange', 'score': 0},
        {'text': 'Coconut', 'score': 1},
        {'text': 'Apple', 'score': 0},
        {'text': 'Banana', 'score': 0}
      ]
    },
    {
      'questiontext': 'If A Plane Crashes On The Border Between The United States And Canada, Where Do They Bury The Survivors?',
      'answertext': [
        {'text': 'United States', 'score': 0},
        {'text': 'Canada', 'score': 0},
        {'text': 'Survivors are never buried.', 'score': 1},
        {'text': 'None of the Above', 'score': 0}
      ]
    },
    {
      'questiontext': 'What Kind Of Room Doesn’t Have Physical Walls?',
      'answertext': [
        {'text': 'StoreRoom', 'score': 0},
        {'text': 'Dinning Room', 'score': 0},
        {'text': 'bedRoom', 'score': 0},
        {'text': 'Chatroom', 'score': 1}
      ]
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title:  Text("QUIZ"),
      ),
      body: _questionIndex < questiion.length
          ? Quiz(
              questiion: questiion,
              questionIndex: _questionIndex,
              answerQuestion: answerQuestion,
            )
          : Result(_totalScore,_resetState),
    ));
  }
}
