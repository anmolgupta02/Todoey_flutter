import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String taskName;

  @override
  Widget build(BuildContext context) {
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
              height: 20,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              height: 50,
              minWidth: 200,
              color: Colors.lightBlueAccent,
              onPressed: () {},
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
