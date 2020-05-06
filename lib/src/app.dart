import 'package:flutter/material.dart';
import './ui/login.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'seat booking',
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
