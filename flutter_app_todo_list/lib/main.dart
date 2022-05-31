import 'package:flutter/material.dart';
import 'package:flutter_app_todo_list/pages/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Title',
      debugShowCheckedModeBanner: false,
      home: TodoListPage(),
    );
  }
}

