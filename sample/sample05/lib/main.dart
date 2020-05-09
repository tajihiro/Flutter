import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: Text('石田ゆり子'),
          backgroundColor: Colors.purple[800],
        ),
        body: ListView(children: <Widget>[
          Column(children: [
            Image(
              image: NetworkImage(
                  'https://lagcapa.org/wp-content/uploads/2019/06/WS001177.jpg'),
              width: 250.0,
            ),
            Image(
              image: AssetImage('images/blowfish.png'),
              width: 300.0,
            ),
            Image(
              image: NetworkImage(
                  'https://gendai.ismcdn.jp/mwimgs/3/a/-/img_3a566cac392aebdf5b3bcdfe10fe3113101518.jpg'),
              width: 250.0,
            ),
            Image.asset(
              'images/blowfish.png',
              width: 300.0,
            ),
          ]),
        ]),
      ),
    ),
  );
}
