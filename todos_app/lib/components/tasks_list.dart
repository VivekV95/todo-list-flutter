import 'package:flutter/material.dart';
import 'package:todos_app/components/tasks_tile.dart';
import 'package:todos_app/model/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function(bool isDone, int index) onTaskDoneChanged;

  TasksList({this.tasks, this.onTaskDoneChanged});
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          onCheckboxChange: (isDone) {
            onTaskDoneChanged(isDone, index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
