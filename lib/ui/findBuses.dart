import 'package:flutter/material.dart';
import 'dart:async';

class FindBuses extends StatefulWidget {
  createState() {
    return FindBusesState();
  }
}

class FindBusesState extends State<FindBuses> {
  String dropDownValue = 'Kandy';
  //add date picker
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 5),
        lastDate: DateTime(2021));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Buses',
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(40.5),
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
            TextField(
              decoration: InputDecoration(
                labelText: "${selectedDate.toLocal()}".split(' ')[0],
              ),
              // Text("${selectedDate.toLocal()}".split(' ')[0]),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text(
                "Select Your journey date",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              color: Colors.deepPurpleAccent,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: () => debugPrint('clicked'),
              color: Colors.green,
              child: Text('Find Buses'),
            ),
          ],
        ),
      ),
    );
  }
}
