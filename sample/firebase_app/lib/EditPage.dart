import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final String memberID;

  EditPage({Key key, @required this.memberID});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController numberController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  void _editMember() {
    Firestore.instance.collection('members').document(widget.memberID).updateData({
      'number': int.parse(numberController.text),
      'last_name': lastNameController.text,
      'first_name': firstNameController.text,
    });

    setState(() {

    });
  }

  @override
  void initState(){
    Firestore.instance.collection('members').document(widget.memberID).get().then((value) {
      numberController.text = value['number'].toString();
      lastNameController.text = value['last_name'];
      firstNameController.text = value['first_name'];
    });
    super.initState();
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
        child: new StreamBuilder <QuerySnapshot>(
              stream: Firestore.instance.collection('members').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if(snapshot.hasError){
                  return new Text('Error: ${snapshot.error}');
                }
                switch (snapshot.connectionState){
                  case ConnectionState.waiting:
                    return new Text('Loading...');
                  default:
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text('${widget.memberID}'),
                        TextFormField(
                          controller: numberController,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            border: OutlineInputBorder(),
                            filled: true,
                            icon: Icon(Icons.format_list_numbered),
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
                            _editMember();
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
                    );
                }
              }
            ),
        ),
      );
  }
}