import 'package:flutter/material.dart';

class TextChange extends StatelessWidget {
  final String textAppBar;

  TextChange(this.textAppBar);

  @override
  Widget build(BuildContext context) {
    return Text(textAppBar,
        style: TextStyle(fontSize: 20), 
        textAlign: TextAlign.center,
      );
  }
}
