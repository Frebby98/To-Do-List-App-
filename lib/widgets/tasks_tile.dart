import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   final bool isChecked;
   final String taskTitle;
   final Function checkboxCallback;
   final Function longPressCallback;
TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style:  TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20, color: Colors.black),),
      trailing: Checkbox(activeColor: Colors.indigoAccent,value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback
    );
  }
}

