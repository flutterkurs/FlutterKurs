import 'package:flutter/material.dart';
import 'package:todo_app/home/HomePage.dart';
import 'package:todo_app/task/NewTaskPage.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTodoList',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.deepPurpleAccent[200]),
//      home: HomePage(title: 'Todo List'),
    home: NewTaskPage(),
    );
  }
}

