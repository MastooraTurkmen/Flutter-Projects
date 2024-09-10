import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Magic 8 Ball',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;

  int getRandomBall() {
    return Random().nextInt(6);
  }

  void AllBalls() {
    setState(() {
      ball = getRandomBall();
    });
    print(ball);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: AllBalls,
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
