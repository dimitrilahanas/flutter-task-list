import 'package:flutter/material.dart';
import 'package:flutter_task_list/widgets/task_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List taskList = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 40,
        title: Text('Tasks'),
      ),

      body: ListView(
        children: [
          TaskTile(taskName: 'homework', isCompleted: false),
          TaskTile(taskName: 'homework', isCompleted: false),
        ],
      )
    );
  }
}