import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/task_data.dart';
import 'Screens/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    builder: (context) => TaskData(),
        child: MaterialApp(home: TodoScreen()));
  }
}