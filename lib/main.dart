import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// import 'pages/todo_page.dart';
// import 'pages/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(primarySwatch: Colors.purple));
  }
}
