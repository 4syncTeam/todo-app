import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_task_screen/add_task.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/add': (context) => AddTask(),
};
