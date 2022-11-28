// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: const HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(height: 25),
          //image
          Center(
              child: Image.asset(
            "assets/$diceNumber.jpg",
            height: 250,
            width: 250,
          )),
          //buttons
          MaterialButton(
            color: Colors.black,
            onPressed: changeDice,
            // ignore: prefer_const_constructors
            child: Text(
              "ROLL",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 300),
          Text("FLUTTER", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
