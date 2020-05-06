import 'package:flutter/material.dart';

class ServiceProvider extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Service Partners',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(25.5),
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
