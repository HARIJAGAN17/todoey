import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/Task_list.dart';
import 'package:todoey/model/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late String tasktile;
  List<Task> tasks = [
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            _showAddTaskBottomSheet(context);
          },
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
        ),
        backgroundColor: Color(0xff001B79),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 60.0,
                      ),
                      radius: 50.0,
                      backgroundColor: Color(0xFFFFEBD8),
                    ),
                    Text(
                      'Todey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '${tasks.length} tasks today',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: TaskList(tasks),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showAddTaskBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => AddTaskScreen((newTaskTitle) {
        setState(() {
          tasks.add(Task(name: newTaskTitle));
        });
        Navigator.pop(context);
      }),
    );
  }
}
