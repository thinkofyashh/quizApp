import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final void Function() resetter;

  Result(this.resultscore, this.resetter);

  String get resultphrase {
    var resultext = "Thank you for answering all the question.";
    if (resultscore == 4) {
      resultext = "Score:4 ,Wow! Great";
    } else if (resultscore == 3) {
      resultext = "Score:3 ,Good";
    } else if (resultscore == 2) {
      resultext =
          "Score:2 , Better luck next time";
    } else {
      resultext = "You failed ";
    }
    return resultext;
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultphrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: resetter,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          child:Text('Reset Quiz'))
    ]));
  }
}
