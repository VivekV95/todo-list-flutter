import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/components/tasks_tile.dart';
import 'package:todos_app/model/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              taskData.deleteTask(index);
            },
            child: TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onDoneChanged: (isDone) {
                taskData.updateItem(index: index, isDone: isDone);
              },
            ),
          );
        },
        itemCount: taskData.taskLength,
      ),
    );
  }
}
