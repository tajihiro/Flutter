import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {

  @override
  _ThirdPageState createState() => _ThirdPageState();

}

class _ThirdPageState extends State<ThirdPage> {

  final items = [
    'たぢ1','たぢ2','たぢ3','たぢ4','たぢ5','たぢ6','たぢ7','たぢ8','たぢ9','たぢ10',
    'たぢ11','たぢ12','たぢ13','たぢ14','たぢ15','たぢ16','たぢ17','たぢ18','たぢ19','たぢ20',
    'たぢ21','たぢ22','たぢ23','たぢ24','たぢ25','たぢ26','たぢ27','たぢ28','たぢ29','たぢ30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return ListTile(
              title: Text(items[index])
          );
        }
      )
    );
  }

  ListTile myTile(title){
      return ListTile(title: Text(title));
  }

}



