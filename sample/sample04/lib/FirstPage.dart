import 'package:flutter/material.dart';
import 'package:sample04/SecondPage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.green,
              width: 120,
              height: 50,
              child: Container(
                color: Colors.orange,
                transform: Matrix4.rotationZ(0.1),
              ),
            ),
            Image.asset('assets/images/Blowfish.png'),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                clipBehavior: Clip.hardEdge,
                child: Image.asset('assets/images/tajima.jpeg'),
              ),
            ),


            RaisedButton(
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SecondPage()));
              },
              child: Text('Next'),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
