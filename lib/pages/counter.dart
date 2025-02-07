// import 'package:flutter/material.dart';

// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});

//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   //variable
//   int counter = 0;

//   //method
//   void incrementCounter() {
//     //setState
//     setState(() {
//       counter++;
//     });
//   }

//   //UI

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("I have pushed the button (white):"),
//           Text(
//             counter.toString(),
//             style: TextStyle(fontSize: 40),
//           ),
//           Text(
//             "$counter",
//             style: TextStyle(fontSize: 40),
//           ),
//           ElevatedButton(onPressed: incrementCounter, child: Text("Click me"))
//         ],
//       )),
//     );
//   }
// }
