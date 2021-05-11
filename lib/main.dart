import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void answerQuestion() {
    setState(() {
      qIndex = qIndex + 1;
    });
    print(qIndex);
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
            Text(questions[qIndex]),
            RaisedButton(
              child: Text('1 answer'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('2 answer'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('3 answer'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
