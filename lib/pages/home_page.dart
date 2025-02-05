import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 128, 234),
      appBar: AppBar(
        title: Text('To Do'),
        backgroundColor: Color.fromARGB(255, 188, 26, 216),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // ToDoList(),
        ],
      )
    );
  }
}
