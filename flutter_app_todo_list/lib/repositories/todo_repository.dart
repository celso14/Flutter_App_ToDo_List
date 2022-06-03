import 'dart:convert';

import 'package:flutter_app_todo_list/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

const todoListKey = 'todo_list';

class TodoRepository {
  TodoRepository() {
    SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
    });
  }

  late SharedPreferences sharedPreferences;

  Future<List<Todo>> getTodoList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString(todoListKey) ?? '{}';
    final List jsonDecode = json.decode(jsonString) as List;
    return jsonDecode.map((e) => Todo.fromJson(e)).toList();
  }

  void saveTodoList(List<Todo> todos) {
    final String jsonString = json.encode(todos);
    sharedPreferences.setString('todo_list', jsonString);
  }
}
