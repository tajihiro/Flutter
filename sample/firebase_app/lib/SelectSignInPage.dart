import 'dart:io';
import 'package:firebaseapp/LogInPage.dart';
import 'package:firebaseapp/SelectSignInPage.dart';
import 'package:firebaseapp/SignInPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SelectSignInPage extends StatefulWidget {
  final String title = 'サインイン';
  @override
  State<StatefulWidget> createState() => SelectSignInPageState();
}

class SelectSignInPageState extends State<SelectSignInPage> {
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
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage())
                  );
                },
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
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => LogInPage())
//                );
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}