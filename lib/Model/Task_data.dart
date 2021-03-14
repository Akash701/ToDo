import 'package:flutter/material.dart';
import 'package:todo_app/Model/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy MIlk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  void addTask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    tasks.add(task);
    notifyListeners();
  }
}
