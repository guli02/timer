import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
// variables
  int timeLeft =5;
// timer method
void _startCountDown(){
    Timer.periodic(Duration(seconds: 1), (timer) { 
       if (timeLeft > 0){
         setState(() {
          timeLeft--;
        });
       } else {
        timer.cancel();
       }

});
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? 'DONE' : timeLeft.toString(),
            style: TextStyle(fontSize: 70)
            ),
            MaterialButton(
              onPressed: _startCountDown,
              child: Text('S T A R T', 
              style: TextStyle(color: Colors.white)
              ),
              color: Colors.deepPurple,
              ),
          ],
        ),
      ),
    );
  }
}