import 'package:flutter/cupertino.dart';

class Task {
  String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void setIsDone(bool isDone) {
    this.isDone = isDone;
  }
}

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void updateItem({isDone: bool, index: int}) {
    if (isDone != null) {
      tasks[index].setIsDone(isDone);
    }
    notifyListeners();
  }
}
