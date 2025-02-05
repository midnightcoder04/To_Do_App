import 'package:flutter/material.dart';

class AButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  AButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed, 
      child: Text(text));
  }
}
