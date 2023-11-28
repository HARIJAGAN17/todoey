import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/model/task.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasktitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
        checkboxCallback:(bool checkboxstate)
        {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        });

      },
      itemCount: widget.tasks.length,
    );
  }
}
