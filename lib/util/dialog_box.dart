import 'package:flutter/material.dart';
import 'package:to_do_app/util/button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.purpleAccent,
        content: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //get user input
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Enter Task',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      focusColor: Colors.black),
                  cursorColor: Colors.black,
                ),

                //save button and cancel button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AButton(text: 'Save', onPressed: onSave),
                    const SizedBox(width: 10),
                    AButton(text: 'Cancel', onPressed: onCancel),
                  ],
                )
              ],
            )));
  }
}
