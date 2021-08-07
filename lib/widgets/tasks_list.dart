import 'package:To_Do_App/models/task.dart';
import 'package:To_Do_App/widgets/tasks_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Bug Eggs'),
    Task(name: 'Buy Bread'),
  ];

  @override
  Widget build(BuildContext context) {
    //using builder to make it dynamic on the basis of index
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (bool checkBoxState) {
              setState(() {
                tasks[index].isDone = checkBoxState;
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
