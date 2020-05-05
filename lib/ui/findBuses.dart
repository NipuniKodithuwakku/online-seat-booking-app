import 'package:flutter/material.dart';

class FindBuses extends StatefulWidget {
  createState() {
    return FindBusesState();
  }
}

class FindBusesState extends State<FindBuses> {
  String dropDownValue = 'Kandy';
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Buses',
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(25.5),
        child: ListView(
          children: <Widget>[
            Text(
              'FROM',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.9,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            DropdownButton(
                value: dropDownValue,
                underline: Container(
                  height: 2,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
                isExpanded: true,
                items: <String>[
                  'Kandy',
                  'Jafna',
                  'Galle',
                  'Tangalle',
                  'Kurunegala'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropDownValue = newValue;
                  });
                }),
            Padding(
              padding: EdgeInsets.all(10.5),
            ),
            Text(
              'TO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.9,
              ),
            ),
            DropdownButton(
                value: dropDownValue,
                underline: Container(
                  height: 2,
                  width: 100,
                  color: Colors.deepPurpleAccent,
                ),
                isExpanded: true,
                items: <String>[
                  'Kandy',
                  'Jafna',
                  'Galle',
                  'Tangalle',
                  'Kurunegala'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropDownValue = newValue;
                  });
                }),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              'JOURNEY DATE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
