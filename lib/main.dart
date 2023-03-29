import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
