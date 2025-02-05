import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/data/database.dart';
import 'package:to_do_app/util/dialog_box.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //referencing hive box
  final _myBox = Hive.box('todo');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
      db.updateDatabase();
    } else {
      db.loadData();
    }
    super.initState();
  }

  //text controller
  final _controller = TextEditingController();
  //List of tasks
  // List toDoList = [
  //   {'taskName': 'Exercise', 'isDone': true},
  //   {'taskName': 'Make a FlutterApp', 'isDone': true},
  //   {'taskName': 'Study for exam', 'isDone': false},
  //   {'taskName': 'Finish Freelance Work', 'isDone': false},
  // ];

  void saveNewTask() {
    setState(() {
      db.toDoList.add({'taskName': _controller.text, 'isDone': false});
      _controller.clear();
    });
    db.updateDatabase();
    Navigator.pop(context);
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.pop(context),
            // onCancel: () => Navigator.of(context),
          );
        });
  }

  void checkBoxChanged(int index) {
    setState(() {
      db.toDoList[index]['isDone'] = !db.toDoList[index]['isDone'];
    });
    db.updateDatabase();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
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
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: db.toDoList[index]['taskName'],
              isDone: db.toDoList[index]['isDone'],
              onToggle: (bool? val) {
                checkBoxChanged(index);
              },
              deleteFunction: (context) => deleteTask(index),
            );
          },
        ));
  }
}
