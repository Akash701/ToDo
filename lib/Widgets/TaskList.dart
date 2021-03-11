import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/TaskTile.dart';
import 'package:todo_app/Model/Task.dart';

class Tasklist extends StatefulWidget {
  final List<Task> tasks;
  Tasklist(this.tasks);
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Tasktile(
          listname: widget.tasks[index].name,
          ischeked: widget.tasks[index].isDone,
          checkBox: (checkBoxSate) {
            setState(() {
              widget.tasks[index].toggle();
            });
          }),
      itemCount: widget.tasks.length,
    );
  }
}
