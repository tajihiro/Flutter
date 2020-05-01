import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登録'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                filled: true,
                icon: Icon(Icons.directions_car),
                hintText: '車のニックネーム',
                labelText: '車のニックネーム',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.directions_car),
                  hintText: '現在の走行メーター(km)',
                  labelText: '現在の走行メーター(km)'
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.directions_car),
                  hintText: '平均燃費予想',
                  labelText: '平均燃費予想'
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.directions_car),
                  hintText: 'ガソリンタンク容量 (l)',
                  labelText: 'ガソリンタンク容量 (l)'
              ),
            ),
            new GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child:
              new Container(
                height: 54.00,
                width: 311.00,
                child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('登録'),
                    ]
                ),
                decoration: BoxDecoration(
                  color: Color(0xffffa031),borderRadius: BorderRadius.circular(27.00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}