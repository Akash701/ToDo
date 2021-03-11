import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Add_task.dart';
import 'package:todo_app/Widgets/TaskList.dart';
import 'package:todo_app/Model/Task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String newtasktitle;
  List<Task> tasks = [
    Task(name: 'Buy MIlk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => TaskAdd((newtasktitle) {
                    setState(() {
                      tasks.add(Task(name: newtasktitle));
                    });
                  }));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TODO',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Tasklist(tasks),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
