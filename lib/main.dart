import 'package:flutter/material.dart';
import 'Screens/info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IOT Control",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfoScreen(),
    );
  }
}