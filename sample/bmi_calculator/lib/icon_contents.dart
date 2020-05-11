import 'package:bmicalculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContents extends StatelessWidget {
  final IconData icon;
  final String iconText;

  IconContents({this.icon, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
