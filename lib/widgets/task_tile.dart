import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  late final bool isChecked ;
  late final String tasktitle;
  final Function checkboxCallback;

   TaskTile({required this.tasktitle,required this.isChecked,required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value)
        {
          checkboxCallback(value);
        },

      ),
    );
  }
  }
