import 'package:flutter/material.dart';

class LaunchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Online',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                ),
              ),
              Text('Seat.lk',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image.asset(
            'images/logo.jpg',
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          RaisedButton(onPressed: null,
          )
        ],
      ),
    );
  }
}
