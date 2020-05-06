import 'package:flutter/material.dart';

class RequestWithdraw extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request Withdraw',
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
                labelText: 'Withdrawal amount',
                hintText: 'Enter the amount',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter the account number or card number',
                hintText: 'Account No:/card No:',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            FlatButton(
              onPressed: null,
              child: Text(
                'Download bank transfer csv template',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.9,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: null,
              child: Text(
                'Request Withdraw',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
