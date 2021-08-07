import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallback});
  // void checkboxCallback(bool checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
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
