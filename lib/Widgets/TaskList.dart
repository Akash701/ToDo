import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/TaskTile.dart';
import 'package:todo_app/Model/Task.dart';

class Tasklist extends StatefulWidget {
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  List<Task> task = [
    Task(name: 'Buy MIlk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Tasktile(
          listname: task[index].name,
          ischeked: task[index].isDone,
          checkBox: (checkBoxSate) {
            setState(() {
              task[index].Toggle();
            });
          }),
      itemCount: task.length,
    );
  }
}
