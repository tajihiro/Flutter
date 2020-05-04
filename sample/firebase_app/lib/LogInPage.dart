import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp/ListMemberPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference dbRef = FirebaseDatabase.instance.reference().child('members');
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _registerToFirebase(){
    print('Registered to Firebase!!!');
    firebaseAuth
        .createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text).then((result){
          dbRef.child(result.user.uid).set({
            'email': emailController.text,
          }).then((response){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ListMemberPage()),
            );
          });
    }).catchError((error){
        showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Error'),
            content: Text(error.message),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
    });
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
            controller: emailController,
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
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Enter User Password',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            validator: (value){
              if(value.isEmpty){
                return 'Enter Your Password!!';
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
