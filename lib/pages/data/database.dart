import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference box
  final _myBox = Hive.box('todo');

  //First time ever opening app
  void createInitialData() {
    toDoList = [
      {'taskName': 'Exercise', 'isDone': true},
      {'taskName': 'Make a FlutterApp', 'isDone': true},
      {'taskName': 'Study for exam', 'isDone': false},
      {'taskName': 'Finish Freelance Work', 'isDone': false},
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
