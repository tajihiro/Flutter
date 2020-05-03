import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/ListPage.dart';
import 'package:firebaseapp/SignInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    FirebaseAuth.instance.currentUser().then((response) {
      print(response);
      if(response != null){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ListPage()),
        );
      }else{
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return new SplashScreen(
      seconds: 5,
      title: new Text('Blowfish',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: Image.asset('assets/images/splash.png', fit:  BoxFit.none),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 180.0,
      onClick: () => print("Flutter"),
      loaderColor: Colors.pink
    );
  }
}

