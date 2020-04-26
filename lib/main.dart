import 'package:flutter/material.dart';
import './ui/login.dart';

void main() {
  runApp(MaterialApp(
    title: "firebase authentication",
    debugShowCheckedModeBanner: false,
    home: new Login(),
  ));
}
