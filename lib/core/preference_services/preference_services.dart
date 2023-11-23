import 'dart:convert';

import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesServices {
  static Future<String?> getName() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(ShPrefKeys.name);
  }

  static Future<bool> saveName(String token) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(ShPrefKeys.name, token);
  }

  static Future<String?> getAge() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(ShPrefKeys.age);
  }

  static Future<bool> saveAge(String age) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(ShPrefKeys.age, age);
  }

  static Future<String?> getPhone() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(ShPrefKeys.phone);
  }

  static Future<bool> savePhone(String phone) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(ShPrefKeys.phone, phone);
  }

  static Future<String?> getEmail() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(ShPrefKeys.email);
  }

  static Future<bool> saveEmail(String email) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(ShPrefKeys.email, email);
  }

  static Future<bool> clearAll() async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.clear();
  }

  Future<void> saveStringList(List<String> stringList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ShPrefKeys.resultList, stringList);
  }

  Future<List<String>> getResultList(String resultList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> stringList = prefs.getStringList(ShPrefKeys.resultList) ?? [];
    return stringList;
  }

  Future<void> saveDatesList(List<String> stringList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ShPrefKeys.dateList, stringList);
  }

  Future<List<String>> getDatesList(String resultList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> stringList = prefs.getStringList(ShPrefKeys.dateList) ?? [];
    return stringList;
  }

  Future<void> saveTodosList(List<String> todo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ShPrefKeys.todos, todo);
  }

  Future<List<String>> getTodosList(String todo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> todoList = prefs.getStringList(ShPrefKeys.todos) ?? [];
    return todoList;
  }

  Future<void> saveToDoList(List<ToDo> todos) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> todoStrings = todos.map((todo) => jsonEncode(todo.toJson())).toList();
    await prefs.setStringList(ShPrefKeys.todoList, todoStrings);
  }

  Future<List<ToDo>> getToDoList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> todoStrings = prefs.getStringList(ShPrefKeys.todoList) ?? [];
    List<ToDo> todos = todoStrings.map((todoString) {
      Map<String, dynamic> json = jsonDecode(todoString);
      return ToDo.fromJson(json);
    }).toList();
    return todos;
  }
}
