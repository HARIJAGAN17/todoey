import 'package:flutter/material.dart';
import 'package:todoey/screens/task_screen.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

