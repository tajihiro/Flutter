import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordsPair = 'Firebase Sample';

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(wordsPair)),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('members').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasError){
              return new Text('Error: ${snapshot.error}');
            }
            switch(snapshot.connectionState){
              case ConnectionState.waiting: return new Text('Loading...');
              default:
                return new ListView(
                  children: snapshot.data.documents.map((DocumentSnapshot document){
                    return new ListTile(
                      title: new Text(document['last_name'] + document['first_name']),
                    );
                  }).toList(),
                );
            }
          },
        ),
      ),
    );
  }
}

