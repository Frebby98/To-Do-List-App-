import 'package:to_do_app/screens/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];

  List<Task> get task => _task;

  int get taskCount => _task.length;

  void addTask(String task) {
    _task.add(Task(name: task));
    notifyListeners();
  }

  void updateCheck(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _task.remove(task);
    notifyListeners();
  }
}
