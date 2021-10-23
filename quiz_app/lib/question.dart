import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var myValue;
  Question(this.myValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(myValue,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29)),
    );
  }
}
