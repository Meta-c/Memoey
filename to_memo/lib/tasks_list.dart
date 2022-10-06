import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      children: [
        TaskTile(task: 'Buy Bread'),
        TaskTile(task: 'Finish course'),
      ],
    );
  }
}
