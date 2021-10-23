import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var myValue;

  var myFunction;
  Answer(this.myValue, this.myFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.green,
          child: RaisedButton(
            onPressed: myFunction,
            child: Text(myValue,style: TextStyle(color: Colors.red),),
          ),
        )
      ],
    );
  }
}
