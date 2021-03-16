import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Model/Task_data.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) => Tasktile(
          listname: taskData.tasks[index].name,
          ischeked: taskData.tasks[index].isDone,
          checkBox: (checkBoxSate) {
            taskData.tsakUpdate(taskData.tasks[index]);
          },
          delete: () {
            taskData.delete(taskData.tasks[index]);
          },
        ),
        itemCount: taskData.tasks.length,
      );
    });
  }
}
