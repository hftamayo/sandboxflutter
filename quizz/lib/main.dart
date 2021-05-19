import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//lesson36: class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//el underscore define una clase como privada
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        //body: Text('This is my default text!'),
        body: Column(
          children: [
            Text(questions.elementAt(_questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Anonymous funct example'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //esta es una func anom larga
                print('Anom funct larga');
              },
            ),
          ],
        ),
      ),
    );
  }
} //fin de class MyAppState
