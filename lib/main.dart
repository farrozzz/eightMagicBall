import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
      title: const Text ("Eight Magic Ball"),
      backgroundColor: Colors.black87,
        ),
    body: const MagicBallPage(),
      ),
  ),
  );
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 1;
  void changeBallNumber(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: TextButton(
          onPressed: changeBallNumber,
          child: Image(
              image: AssetImage("assets/images/ball$ballNumber.png"),
       ),
        ),
      ),
    );
  }
}

