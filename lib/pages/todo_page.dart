import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String greetingMessage = '';
  //greeting message
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = 'Hello, ' + userName;
    });
  }

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage, style: TextStyle(fontSize: 40)),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Your Name'),
              controller: myController,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.blue),
                onPressed: greetUser,
                child: Text('Greet User')),
          ],
        ),
      )),
    );
  }
}
