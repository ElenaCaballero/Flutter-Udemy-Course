// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';


import './app.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _appBarText = 'Some Text';

  void _changeText() {
    setState(() {
      _appBarText = _appBarText == 'Some Text' ? 'New Text' : 'Some Text';
    });
    print(_appBarText);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Application(text: _appBarText, textHandler: _changeText),
      ),
    );
  }
}
