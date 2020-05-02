import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  void _registerMember() {
    Firestore.instance.collection("members").add({
      'last_name': lastNameController.text,
      'first_name': firstNameController.text,
    });

    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('更新'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
    );
  }
}