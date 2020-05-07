// import './launchingPage.dart';

import './signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(40.0),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'images/logo.png',
              width: 200,
              height: 200,
            ),
            Container(
              child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    //emailfield
                    TextFormField(
                      controller: null,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "username(email)",
                        icon: Icon(Icons.email),
                      ),
                    ),
                    //passwordField
                    TextFormField(
                      controller: null,
                      decoration: InputDecoration(
                        hintText: "password",
                        icon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    //submit button

                    RaisedButton(
                      onPressed: () {
                        formKey.currentState.reset();
                      },
                      padding: EdgeInsets.all(10.5),
                      hoverColor: Colors.blueGrey,
                      //make rounded border
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //   topRight: Radius.circular(25.0),
                      //   topLeft: Radius.circular(25.0),
                      //   bottomLeft: Radius.circular(25.0),
                      //   bottomRight: Radius.circular(25.0),
                      // )),
                      child: Text("Sign In",
                          style: TextStyle(color: Colors.white)),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16.9,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    'Register',
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
