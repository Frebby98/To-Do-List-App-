import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/widgets/tasks_tile.dart';
import 'package:to_do_app/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
      return ListView.builder(
        padding: EdgeInsets.all(30),
        itemBuilder: (context, index) {
          final task = taskData.task[index];
          return TaskTile(
          taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
            taskData.updateCheck(task);
            },
            longPressCallback: (){
            taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
    );
  });
}
}

