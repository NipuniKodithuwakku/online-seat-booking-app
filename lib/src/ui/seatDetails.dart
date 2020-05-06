import 'package:flutter/material.dart';

class SeatDetails extends StatefulWidget {
  createState() {
    return SeatDetailsState();
  }
}

class SeatDetailsState extends State<SeatDetails> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seat Details',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(25.5),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Seats",
                  hintText: 'Please select your seats'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Total',
                hintText: 'Total will be calculated in LKR',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                hintText: 'Enter Your Mobile Number',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Text(
                'continue to pay',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
