// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tasks_list.dart';
import 'tasks_tile.dart';

final myController = TextEditingController();
String newTask = '';
Widget buildButtomSheet(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          onChanged: (value) => newTask,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Add Task',
              hintStyle: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.lightBlueAccent,
              textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          onPressed: (() {
            TaskTile(task: newTask);
          }),
          child: Text('Add'))
    ],
  );
}
