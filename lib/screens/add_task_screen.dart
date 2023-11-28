import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    late String tasktitile;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                    tasktitile = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              width: 180.0,
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  addTaskCallback(tasktitile);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
