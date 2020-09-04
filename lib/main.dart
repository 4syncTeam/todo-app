import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './screens/add_task_screen/add_task.dart';
import './screens/home_screen/home_screen.dart';

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/add': (context) => AddTask(),
      },
    );
  }
}
