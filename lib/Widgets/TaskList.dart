import 'package:flutter/material.dart';
import 'package:todo_app/Widgets/TaskTile.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
      children: [
        Tasktile('Buy Milk'),
        Tasktile('Buy Break'),
        Tasktile('Buy Tea'),
      ],
    );
  }
}
