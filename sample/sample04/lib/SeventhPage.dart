import 'package:flutter/material.dart';

class SeventhPage extends StatefulWidget {

  @override
  _SeventhPageState createState() => _SeventhPageState();

}

class _SeventhPageState extends State<SeventhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seventh Page')),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Text('Header'),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 400.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Text('Contents'),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0)
                ),
                child: Text('Footer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
