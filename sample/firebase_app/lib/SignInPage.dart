import 'dart:io';
import 'package:firebaseapp/SigninPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignInPage extends StatefulWidget {
  final String title = 'SignIn';
  @override
  State<StatefulWidget> createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Blowfish',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Roboto'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Email,
                text: 'Sign up with Email',
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Google,
                text: 'Sign up with Google',
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Twitter,
                text: 'Sign up with Twitter',
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Text('Log In Useing Email',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue
                ),
              ),
              onTap: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}