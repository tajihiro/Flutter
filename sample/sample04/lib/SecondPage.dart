import 'package:flutter/material.dart';
import 'package:sample04/ThirdPage.dart';

class SecondPage extends StatefulWidget {

  @override
  _SecondPageState createState() => _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            height: 100,
            child: Row(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
//                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new ThirdPage()));
                  },
                  child: Text('Next'),
                ),
                myContainer(),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            height: 160,
            child: myContainer(),
          ),
        ],
      ),
    );
  }

  Container myContainer(){
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: ClipOval (
        clipBehavior: Clip.hardEdge,
        child: Image.asset('assets/images/tajima.jpeg'),
      ),
    );
  }


}



