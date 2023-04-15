import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selecthandler;
  final String answertext;
  Answer(this.selecthandler,this.answertext);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:  const EdgeInsets.all(28),
      //decoration: const BoxDecoration(
        //image: DecorationImage(image: AssetImage('assets/images/im.png'))
     // ),
      child:ElevatedButton(
      onPressed:selecthandler,
      style: ElevatedButton.styleFrom(primary: Colors.indigoAccent),
      child: Text(answertext),),);
  }
}


