// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tasks_list.dart';
import 'tasks_tile.dart';

final myController = TextEditingController();
String newTask = '';
TasksList list = TasksList();
//late final Function() onpress;

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 13, 25, 20),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlueAccent,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    onPressed: () {},
                    child: Text('Add',
                        style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
            ],
          ),
        )
      ],
    );
  }
}

//list.addTask(newTask);