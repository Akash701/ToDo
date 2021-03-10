import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile(this.listname);
  final String listname;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        listname,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(value: false),
    );
  }
}
