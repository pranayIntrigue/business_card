import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//A STATELESS WIDGET CAN BE IMPORTED TO MAIN THIS IS NEEDED FOR HOT RELOAD
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[600],
          title: Text('IM Trivia'),
        ),
        body: SafeArea(
            child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //or use width as infinity
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text('Hello my name is Mark'),
            ),
            Center(
              child: StackedWidgets(),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text('I am from New Foundland'),
            ),
          ],
        )),
      ),
    );
  }
}

class StackedWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
          margin: EdgeInsets.only(top: 100),
        )
      ],
    );
  }
}
