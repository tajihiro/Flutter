import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
