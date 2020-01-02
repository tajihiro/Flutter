import 'package:flutter/material.dart';
import 'package:sample04/FifthPage.dart';

class FourthPage extends StatefulWidget {

  @override
  _FourthPageState createState() => _FourthPageState();

}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FourthPage'),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisSpacing: 16.0,
              crossAxisCount: 3,
              childAspectRatio: 2
          ),
          scrollDirection: Axis.vertical,
          primary: false,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FifthPage()));
          },
          tooltip: 'Next',
          child: Icon(Icons.arrow_forward),
        ),
    );
  }

  Container myContainer(){
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Image.asset('assets/images/tajima.jpeg'),
    );
  }
}
