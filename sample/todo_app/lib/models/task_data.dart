import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk.'),
    Task(name: 'Buy Cokkies.'),
    Task(name: 'Buy Eggs.'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
