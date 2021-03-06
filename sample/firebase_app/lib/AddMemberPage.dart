import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddMemberPage extends StatefulWidget {

  @override
  _AddMemberPageState createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  TextEditingController numberController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  void _registerMember() {
    Firestore.instance.collection("members").add({
      'number': int.parse(numberController.text),
      'last_name': lastNameController.text,
      'first_name': firstNameController.text,
    }).then((value) => print(value.documentID));

    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('登録'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: numberController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                filled: true,
                icon: Icon(Icons.account_circle),
                labelText: 'No.',
              ),
              validator: (value){
                if(value.isEmpty){
                  return '必須です';
                }
                return null;
              },
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                filled: true,
                icon: Icon(Icons.account_circle),
                labelText: '姓',
              ),
              validator: (value){
                if(value.isEmpty){
                  return '必須です';
                }
                return null;
              },
            ),
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.account_box),
                  labelText: '名'
              ),
              validator: (value){
                if(value.isEmpty){
                  return '必須です';
                }
                return null;
              },
            ),
            new GestureDetector(
              onTap: (){
                print('Register!!');
                _registerMember();
                Navigator.pop(context);
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