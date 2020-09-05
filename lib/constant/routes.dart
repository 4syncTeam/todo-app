import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_task_screen/add_task.dart';
import 'package:todoapp/screens/auth_screen/auth_screen.dart';
import 'package:todoapp/screens/todos_list_screen/todos_list_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  ADD_TASK_ROUTE: (context) => AddTask(),
  AUTH_ROUTE: (context) => AuthScreen(),
  TODO_LIST_ROUTE: (context) => TodoListScreen(),
};

const String AUTH_ROUTE = '/auth';
const String ADD_TASK_ROUTE = '/add';
const String TODO_LIST_ROUTE = '/todo-list';
