import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({this.taskName});

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback(newTaskTitle));

  @override
  Widget build(BuildContext context) {
    String taskName;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              //controller: taskAdderController,
              autofocus: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                taskName = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              height: 50,
              minWidth: 200,
              color: Colors.lightBlueAccent,
              onPressed: () {
                addTaskCallback(taskName);
              },
              child: Text(
                "Add",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
