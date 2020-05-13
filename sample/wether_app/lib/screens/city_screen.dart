import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wetherapp/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value) {
                cityName = value;
              },
              decoration: kTextFieldInputDecoration,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pop(context, cityName);
            },
            child: Text(
              'Get Wether',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
