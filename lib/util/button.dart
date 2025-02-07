import 'package:flutter/material.dart';

class AButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: const Color.fromARGB(255, 194, 36, 222),
        child: Text(text));
  }
}
