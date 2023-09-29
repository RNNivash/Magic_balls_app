import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
   home: Scaffold(
     backgroundColor: Colors.blueGrey,
     appBar: AppBar(
       title: Text('Ask me anything'),
       backgroundColor: Colors.lightBlueAccent,
     ),
     body: BallState(),
   ),
  ),
  );
}

class BallState extends StatefulWidget {
  const BallState({super.key});

  @override
  State<BallState> createState() => _BallState();
}

class _BallState extends State<BallState> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
        Expanded(
           child : TextButton(
             onPressed:(){
             setState(() {
               ballNumber = Random().nextInt(5) + 1 ;
              });
              },
             child: Image.asset('images/ball$ballNumber.png'),
         ),
        ),
        ],
      ),
    );
  }
}


