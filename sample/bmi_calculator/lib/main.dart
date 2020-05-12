import 'package:bmicalculator/screens/input_page.dart';
import 'package:bmicalculator/screens/result_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICaluculator());

class BMICaluculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0C0D22),
          scaffoldBackgroundColor: Color(0xFF211B37),
          textTheme: TextTheme(
              body1: TextStyle(
            color: Colors.white,
          ))),
//      home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage()
      },
    );
  }
}
