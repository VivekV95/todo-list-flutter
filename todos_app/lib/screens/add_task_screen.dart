import 'package:flutter/material.dart';
import 'package:todos_app/model/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(Task taskToAdd) onTaskAdded;

  AddTaskScreen({this.onTaskAdded});

  @override
  Widget build(BuildContext context) {
    String taskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (title) {
                taskTitle = title;
              },
            ),
            FlatButton(
              onPressed: () {
                onTaskAdded(Task(name: taskTitle));
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
      ),
    );
  }
}
