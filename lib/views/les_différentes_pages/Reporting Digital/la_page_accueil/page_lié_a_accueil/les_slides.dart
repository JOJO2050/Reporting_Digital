import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ajouter une Slide'),
        ),
        body: MyPageView(),
      ),
    );
  }
}

class MyPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Slide 1',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              'Slide 2',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              'Slide 3',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
      ],
    );
  }
}
