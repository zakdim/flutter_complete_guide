import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

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
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
