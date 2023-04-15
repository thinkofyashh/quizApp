import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questiion;
  final int questionIndex;
  final void Function(int) answerQuestion;


  Quiz({required this.questiion, required this.questionIndex, required this.answerQuestion});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questiion[questionIndex]['questiontext'].toString()),
        ...(questiion[questionIndex]['answertext'] as List<Map<String,Object>>)
            .map((answertext) {
          return Answer(()=>answerQuestion(answertext['score'] as int), answertext['text'] as String);
        }).toList()
        //Answer(answerQuestion),
        //Image.asset('assets/images/im.png'),
        //Answer(answerQuestion),
        // Answer(answerQuestion),
      ],
    );
  }
}
