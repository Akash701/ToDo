import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Model/Task_data.dart';
import 'package:todo_app/Screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
