import 'package:flutter/material.dart';

class FindBuses extends StatefulWidget {
  createState() {
    return FindBusesState();
  }
}

class FindBusesState extends State<FindBuses> {
  String dropDownValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('find buses'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(25.5),
        child: ListView(
          children: <Widget>[
            Text(
              'FROM',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            DropdownButton(
              value: dropDownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 20,
              //elevation: z-coordinate at which to place the menu when open
              elevation: 10,
              hint: Text('Enter your depature station'),
              isExpanded: true,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
              items: <String>[
                'Kandy',
                'Kurunegala',
                'Anuradhapura',
                'Kanduruwela',
                'Badulla',
                'Nuwara Eliya',
                'Bandarawela',
                'Monaragala',
                'Hambantota',
                'Jafna',
                'Vaunia',
                'Puttalam',
                'Negombo',
                'Ampara',
                'Welimada',
                'Tangalle',
                'Kataragama',
                'Galle',
                'Matara',
                'Chilaw',
                'baticaloe'
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
              },
            ),
            Text(
              'TO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            DropdownButton(
              value: dropDownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 20,
              //elevation: z-coordinate at which to place the menu when open
              elevation: 10,
              hint: Text('Enter your depature station'),
              isExpanded: true,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
              items: <String>[
                'Kandy',
                'Kurunegala',
                'Anuradhapura',
                'Kanduruwela',
                'Badulla',
                'Nuwara Eliya',
                'Bandarawela',
                'Monaragala',
                'Hambantota',
                'Jafna',
                'Vaunia',
                'Puttalam',
                'Negombo',
                'Ampara',
                'Welimada',
                'Tangalle',
                'Kataragama',
                'Galle',
                'Matara',
                'Chilaw',
                'baticaloe'
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
