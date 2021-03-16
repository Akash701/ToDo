import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile({this.listname, this.ischeked, this.checkBox, this.delete});
  final String listname;
  final bool ischeked;
  final Function checkBox;
  final Function delete;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: delete,
      title: Text(
        listname,
        style: TextStyle(
          decoration: ischeked ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkBox,
        activeColor: Colors.lightBlueAccent,
        value: ischeked,
      ),
    );
  }
}
