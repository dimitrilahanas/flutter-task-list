import 'package:flutter/material.dart';
import 'package:flutter_task_list/widgets/dialogue_button.dart';

class DialogueBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogueBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.only(bottom: 330, top: 300),
      content: Column(
        children: [
          SizedBox(
            height: 60,
            width: 200,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Enter task name',
              )
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DialogueButton(buttonName: 'Add', onPressed: onSave,),

              DialogueButton(buttonName: 'Close', onPressed: onCancel,),
            ],
          ),
        ],
      ),
    );
  }
}