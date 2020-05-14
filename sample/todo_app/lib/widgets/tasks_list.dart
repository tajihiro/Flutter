import 'package:flutter/cupertino.dart';
import 'package:todoapp/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          title: 'AAAAAA',
        ),
        TaskTile(
          title: 'BBBBB',
        ),
        TaskTile(
          title: 'CCC',
        ),
      ],
    );
  }
}
