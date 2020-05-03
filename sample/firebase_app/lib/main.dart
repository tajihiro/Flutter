import 'package:firebaseapp/SplashPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = 'Firebase Sample';

    return MaterialApp(
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.pink,
        brightness: Brightness.light
//        textTheme: TextTheme(
//          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//          title: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
//          body1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
//        )

      ),
      home: SplashPage()
    );
  }
}

