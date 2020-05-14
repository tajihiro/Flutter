import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_task_screen.dart';
import 'package:todoapp/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Todo App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
