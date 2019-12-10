import 'dart:collection';

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
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateItem({isDone: bool, index: int}) {
    if (isDone != null) {
      _tasks[index].setIsDone(isDone);
    }
    notifyListeners();
  }

  int get taskLength {
    return _tasks.length;
  }
}
