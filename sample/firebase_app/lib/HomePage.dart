import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/ListMemberPage.dart';
import 'package:firebaseapp/LogInPage.dart';
import 'package:firebaseapp/SelectSignInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String uid;

  HomePage({Key key, @required this.uid});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          onPressed: (){
              FirebaseAuth auth = FirebaseAuth.instance;
              auth.signOut().then((response){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                );
              });
          },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('HOME'),
            new GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ListMemberPage();
                }),
                );
              },
              child:
              new Container(
                height: 54.00,
                width: 311.00,
                child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('更新'),
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
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('email'),
              accountName: Text('name'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: new IconButton(
                  icon: new Icon(Icons.home, color: Colors.black),
                  onPressed: () => null),
              title: Text('Home'),
              onTap: () {
                print(widget.uid);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(uid: widget.uid)),
                );
              },
            ),
            ListTile(
              leading: new IconButton(
                  icon: new Icon(Icons.settings, color: Colors.black),
                  onPressed: () => null),
              title: Text('Settings'),
              onTap: () {
                print(widget.uid);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(uid: widget.uid)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}