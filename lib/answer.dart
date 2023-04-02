import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // ElevatedButton is styled with material by default
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.blue),
        //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
        // style: ElevatedButton.styleFrom(
        //   backgroundColor: Colors.orange,
        //   foregroundColor: Colors.white,
        // ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
