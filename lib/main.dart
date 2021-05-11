import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _answerQuestion() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["Whats your fav color?", "Whats your fav car"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Murads App'),
        ),
        body: Column(
          children: [
            Text(questions[_qIndex]),
            RaisedButton(
              child: Text('1 answer'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('2 answer'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('3 answer'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
