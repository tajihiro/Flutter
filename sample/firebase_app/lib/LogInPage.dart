import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  void _registerToFirebase(){
    print('Registered to Firebase!!!');
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter User Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'Enter Your Name!!';
                    }else{
                      return null;
                    }
                  },
          ),
        ),
        RaisedButton(
          color: Colors.lightBlue,
          onPressed: (){
            if(_formKey.currentState.validate()){
              _registerToFirebase();
            }
          },
          child: Text('登録'),
        )
      ],),
      ),
    );
  }
}
