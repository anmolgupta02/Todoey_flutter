import 'package:To_Do_App/widgets/tasks_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [TaskTile(), TaskTile()]);
  }
}
