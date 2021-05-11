import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('This is the question!'),
            RaisedButton(
              child: Text('1 answer'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('2 answer'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('3 answer'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
