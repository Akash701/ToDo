import 'package:flutter/material.dart';
import 'package:todo_app/Model/Task.dart';
import 'package:todo_app/Screens/screens.dart';

class TaskAdd extends StatelessWidget {
  final Function addcallback;
  TaskAdd(this.addcallback);
  String newtasktitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtask) {
                newtasktitle = newtask;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              ),
              onPressed: () {
                addcallback(newtasktitle);
                Navigator.pop(context);
              },
              child: Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
