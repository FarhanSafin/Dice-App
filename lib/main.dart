import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purpleAccent.shade400,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.purpleAccent.shade700,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;

  void buttonpressed() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  buttonpressed();
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  buttonpressed();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
