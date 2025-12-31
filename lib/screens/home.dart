import 'package:flutter/material.dart';
import 'package:flutter_task_list/widgets/dialogue_box.dart';
import 'package:flutter_task_list/widgets/task_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();

  List taskList = [];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      taskList[index][1] = !taskList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      taskList.add([_controller.text, false]);
    });
  }

  void createNewTask() {
    showDialog(context: context, builder: (context) {
      return DialogueBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 40,
        title: Text('Tasks'),
      ),

      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder:(context, index) {
          return TaskTile(
            taskName: taskList[index][0], 
            isCompleted: taskList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}