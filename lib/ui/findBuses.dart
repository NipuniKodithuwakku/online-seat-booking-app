import 'package:flutter/material.dart';

class FindBuses extends StatefulWidget{
  createState(){
    return FindBusesState();
  }
}

class FindBusesState extends State<FindBuses>{
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Find Buses',),
        backgroundColor:Colors.redAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(25.5),
        child:ListView(
        children: <Widget>[
          Text("FROM",style:TextStyle(
            color:Colors.black,
            fontSize:20.0,
            fontWeight:FontWeight.w500,
          ),),

        ],
      ),
      )
      

    );
  }
}