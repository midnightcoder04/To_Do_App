import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final ValueChanged<bool?>? onToggle;

  const ToDoTile(
      {super.key,
      required this.taskName,
      required this.isDone,
      required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: isDone,
              onChanged: onToggle,
              activeColor: Colors.black,
            ),
            //task
            Text(
              taskName,
              style: TextStyle(
                fontSize: 15,
                decoration: isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
