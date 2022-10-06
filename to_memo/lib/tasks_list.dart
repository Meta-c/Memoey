import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({
    Key? key,
  }) : super(key: key);

  List<TaskTile> tilesList = [];

  void addTask(String task) {
    tilesList.add(TaskTile(task: task));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      children: tilesList,
    );
  }
}
