import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.task});

  String task;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          value == true;
        },
      ),
    );
  }
}
