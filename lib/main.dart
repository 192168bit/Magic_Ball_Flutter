import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int magicBall = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: TextButton(
        onPressed: () {
          setState(() {
            magicBall = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$magicBall.png'),
      )),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anyting.'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
      body: Ball(),
    );
  }
}
