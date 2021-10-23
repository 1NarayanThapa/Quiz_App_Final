import 'package:flutter/material.dart';
class Result extends StatelessWidget {
 Function restartFunction;
 var finalScore;
  Result(this.restartFunction,this.finalScore);


  String get finalValue{

    var myValue;
    if(finalScore>40){
      myValue='you are good..your score is${finalScore}';
    }else if(finalScore>30){
      myValue='your are average .your score is${finalScore}';
    }else{
      myValue='you are right...your score is${finalScore}';
    }
    return myValue;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [

        Text(
        
          finalValue,textAlign: TextAlign.center,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
  
       
       FlatButton(onPressed: restartFunction, child: Text("Restart",textAlign: TextAlign.center,style: TextStyle(color: Colors.green,fontSize: 25),))
      ],),
    );
  }
}