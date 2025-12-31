import 'package:flutter/material.dart';

class DialogueButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  DialogueButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}