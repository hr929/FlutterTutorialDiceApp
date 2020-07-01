import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.redAccent,
        body: Center(
          child: DiceRow(),
        )
      ),
    );
  }
}
class DiceRow extends StatefulWidget {
  @override
  _DiceRowState createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: (){
              changeFace();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: (){
              setState(() {
                changeFace();
              });
            },
          ),
        ),
      ],
    );
  }
  void changeFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
}






