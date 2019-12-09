import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/components/tasks_tile.dart';
import 'package:todos_app/model/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData taskData = Provider.of<TaskData>(context);
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          onDoneChanged: (isDone) {
            taskData.updateItem(index: index, isDone: isDone);
          },
        );
      },
      itemCount: taskData.tasks.length,
    );
  }
}
