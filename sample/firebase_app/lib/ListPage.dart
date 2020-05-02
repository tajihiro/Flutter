import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseapp/EditPage.dart';
import 'package:firebaseapp/RegisterPage.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('一覧')),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('members').orderBy('number').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return new Text('Error: ${snapshot.error}');
          }
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Text('Loading...');
            default:
              return new ListView(
                  children: snapshot.data.documents.map((
                  DocumentSnapshot document) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                          return EditPage(memberID: document.documentID,);
                        }),
                      );
                    },
                    child:
                      new ListTile(
                        title: new Text(
                            document['number'].toString() + '. ' + document['last_name'] + ' ' + document['first_name']),
                        subtitle: new Text(document.documentID),
                      ),
                  );
                }).toList(),
              );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return RegisterPage();
              }),
          );
        },
        tooltip: '登録',
        child: Icon(Icons.add),
      ),
    );
  }
}
