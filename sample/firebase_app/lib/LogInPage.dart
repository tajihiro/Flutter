import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebaseapp/HomePage.dart';
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

  void _loginToFirebase(){
    firebaseAuth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text)
        .then((result){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage(uid: result.user.uid)),
          );
    }).catchError((error ){
      print(error.message);
      showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text('Error'),
              content: Text(error.message),
              actions: [
                FlatButton(
                  child: Text('OK'),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          }
      );
    });
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Email'),
      ),
      body: Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            validator: (value){
              if(value.isEmpty){
                return 'Emailを入力してください。';
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
              labelText: 'パスワード',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            validator: (value){
              if(value.isEmpty){
                return 'パスワードを入力してください。';
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
              _loginToFirebase();
            }
          },
          child: Text('ログイン'),
        )
      ],),
      ),
    );
  }
}
