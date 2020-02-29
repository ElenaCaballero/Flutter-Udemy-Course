import 'package:flutter/material.dart';

import './text.dart';
import './textControl.dart';

class Application extends StatelessWidget {
  final Function textHandler;
  final String text;

  Application({@required this.text, @required this.textHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextChange(text),
        TextControl(textHandler),
      ],
    );
  }
}