
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                filled: true,
                icon: Icon(Icons.email),
                labelText: 'Email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return '必須です';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(),
                filled: true,
                icon: Icon(Icons.enhanced_encryption),
                labelText: 'パスワード',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return '必須です';
                }
                return null;
              },
            ),
            new GestureDetector(
              onTap: () {
                print('Register!!');
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
                      Text('ログイン'),
                    ]
                ),
                decoration: BoxDecoration(
                  color: Color(0xffffa031),
                  borderRadius: BorderRadius.circular(27.00),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

