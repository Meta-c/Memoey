// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tasks_tile.dart';
import 'tasks_list.dart';
import 'bottom_sheet.dart';

class MemosPage extends StatefulWidget {
  MemosPage({Key? key}) : super(key: key);

  @override
  State<MemosPage> createState() => _MemosPageState();
}

class _MemosPageState extends State<MemosPage> {
  bool checkMark = false;
  int tasksNum = 0;

  // Widget buildButtomSheet(BuildContext context) {
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: Colors.lightBlueAccent,
              onPressed: (() {
                showModalBottomSheet(
                    context: context, builder: buildButtomSheet);
              })),
          backgroundColor: Colors.lightBlueAccent,
          body: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0, left: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FloatingActionButton.large(
                            elevation: 0,
                            child: Icon(
                              Icons.list,
                              color: Colors.lightBlueAccent,
                              size: 75,
                            ),
                            backgroundColor: Colors.white,
                            onPressed: () {}),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Memoey',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$tasksNum Tasks',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 8, color: Colors.white),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: TasksList(),
                        )
                      ],
                    ),
                  ),
                )
              ])),
    );
  }
}
