import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseapp/AddMemberPage.dart';
import 'package:firebaseapp/EditMemberPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListMemberPage extends StatefulWidget {

  @override
  _ListMemberPageState createState() => _ListMemberPageState();
}

class _ListMemberPageState extends State<ListMemberPage> {

  void _deleteMember(memberID){
    Firestore.instance.collection('members').document(memberID).delete().then((value) => print("Deleted"));
  }

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
                          return EditMemberPage(memberID: document.documentID,);
                        }),
                      );
                    },
                    child:
                        Slidable(
                          actionPane: SlidableDrawerActionPane(),
                          actionExtentRatio: 0.25,
                          child: new ListTile(
                            title: new Text(
                                document['number'].toString() + '. ' + document['last_name'] + ' ' + document['first_name']),
                            subtitle: new Text(document.documentID),
                          ),
                          secondaryActions: <Widget>[
                            IconSlideAction(
                              caption: '削除',
                              color: Colors.pink,
                              icon: Icons.delete,
                              onTap: () {
                                _deleteMember(document.documentID);
                              },
                            ),
                          ],
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
                return AddMemberPage();
              }),
          );
        },
        tooltip: '登録',
        child: Icon(Icons.add),
      ),
    );
  }
}
