import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: Text('Sample05'),
          backgroundColor: Colors.purple[800],
        ),
        body: Center(
          child: Column(children: [
            Image(
              image:
                  NetworkImage('https://f4.bcbits.com/img/a4259120173_16.jpg'),
              width: 300.0,
            ),
            Image(
              image: AssetImage('images/blowfish.png'),
              width: 300.0,
            ),
            Image.asset(
              'images/blowfish.png',
              width: 300.0,
            ),
          ]),
        ),
      ),
    ),
  );
}
