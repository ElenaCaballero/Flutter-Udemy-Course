import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textChanger;

  TextControl(this.textChanger);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          'Change Text',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        onPressed: textChanger,
      ),
    );
  }
}
