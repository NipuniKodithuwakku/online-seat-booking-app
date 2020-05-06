import 'package:flutter/material.dart';

class AvailableList extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Available Buses',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Card(
          margin: EdgeInsets.all(20.0),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('card tapped.');
            },
            child: Container(
              width: 320,
              height: 500,
              color: Colors.grey,
              child: Text(
                ' JAYA TRAVELS\n Super Luxury(XL\nBus Number:ND-4409\nRoute Number:01)',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
