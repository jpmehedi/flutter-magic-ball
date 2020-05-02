import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: "Magic ball",
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic Ball"),
      ),
      body: Container(
          child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      )),
    );
  }
}
