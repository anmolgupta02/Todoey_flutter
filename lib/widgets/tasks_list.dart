import 'package:To_Do_App/models/task.dart';
import 'package:To_Do_App/widgets/tasks_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    //using builder to make it dynamic on the basis of index
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallback: (bool checkBoxState) {
              setState(() {
                widget.tasks[index].isDone = checkBoxState;
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
