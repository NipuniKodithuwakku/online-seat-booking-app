import 'package:firebase_authentication/ui/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(50.5),
        // margin:const EdgeInsets.only(top: 100.5),
        child: ListView(
          children: <Widget>[
            //add title
            Image.asset(
              'images/logo.png',
              height: 200,
              width: 200,
            ),

            //add username field

            TextField(
              controller: null,
              decoration: InputDecoration(
                  hintText: "username(email)", icon: Icon(Icons.email)),
            ),

            //add password field

            TextField(
              controller: null,
              decoration:
                  InputDecoration(hintText: "password", icon: Icon(Icons.lock)),
              obscureText: true,
            ),

            //create a button
            Container(
              margin: EdgeInsets.all(10.5),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                //make rounded border
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                )),
                child: Text("Sign In", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
