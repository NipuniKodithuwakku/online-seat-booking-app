import './launchingPage.dart';
import 'package:flutter/material.dart';
import './login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Register"), backgroundColor: Colors.redAccent),
      body: Container(
        margin: const EdgeInsets.all(40.0),
        // margin:const EdgeInsets.only(top: 100.5),
        child: ListView(
          children: <Widget>[
            //add logo
            Image.asset(
              'images/logo.png',
              width: 200,
              height: 200,
            ),
            //add first name
            TextField(
              controller: null,
              decoration: InputDecoration(
                  hintText: "First name", icon: Icon(Icons.person_pin)),
            ),

            //add last name
            TextField(
              controller: null,
              decoration: InputDecoration(
                  hintText: "Last name", icon: Icon(Icons.person_add)),
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
                    MaterialPageRoute(builder: (context) => LaunchingPage()),
                  );
                },
                child: Text("Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                color: Colors.red,
              ),
            ),
            Padding(padding: EdgeInsets.all(14.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.9,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                // InkWell(
                //   child: Text(
                //     'Sign In',
                //     style: TextStyle(
                //       color: Colors.red,
                //       fontSize: 16.9,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                //   // onTap: () => launch('./login.dart'),
                // ),

                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
