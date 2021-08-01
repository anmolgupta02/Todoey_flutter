import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: TaskCheckbox(isChecked, checkboxCallback),
      /* this can be done using anonmyous functions calls as well.
      First we need to change the TaskCheckBox constructor as named constructor using {}
      Then in the calling, using named arguments do this -
        TaskCheckbox(checkBoxState : isChecked,
        checkBoxCallback :(bool checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
           }); )
      */
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function checkBoxCallback;

  TaskCheckbox(this.checkBoxState, this.checkBoxCallback);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: checkBoxCallback,
    );
  }
}
