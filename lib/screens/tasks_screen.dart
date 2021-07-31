import 'package:To_Do_App/screens/add_task_screen.dart';
import 'package:To_Do_App/widgets/tasks_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  final String noOfTasks = "12";

  // Widget buildBottomSheet(BuildContext context) => Container(
  // We can pass this directly to the builder for showModalBottomSheet but for code optimization,
  // we'll use a different strategy.
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTaskScreen());
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '$noOfTasks Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: TasksList()),
          )
        ],
      ),
    );
  }
}
