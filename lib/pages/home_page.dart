import 'package:flutter/material.dart';
import 'package:to_do_app/util/dialog_box.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of tasks
  List toDoList = [
    {'taskName': 'Exercise', 'isDone': true},
    {'taskName': 'Make a FlutterApp', 'isDone': true},
    {'taskName': 'Study for exam', 'isDone': false},
    {'taskName': 'Finish Freelance Work', 'isDone': false},
  ];

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index]['isDone'] = !toDoList[index]['isDone'];
    });
  }

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
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          backgroundColor: Color.fromARGB(255, 189, 38, 215),
          foregroundColor: Colors.black,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: toDoList[index]['taskName'],
              isDone: toDoList[index]['isDone'],
              onToggle: (bool? val) {
                checkBoxChanged(index);
              },
            );
          },
        ));
  }
}
