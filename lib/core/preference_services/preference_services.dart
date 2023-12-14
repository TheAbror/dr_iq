import 'dart:convert';
import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesServices {
  Future<void> saveStringList(List<String> stringList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ShPrefKeys.resultList, stringList);
  }

  Future<List<String>> getResultList(String resultList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> stringList = prefs.getStringList(ShPrefKeys.resultList) ?? [];
    return stringList;
  }

  Future<List<String>> getDatesList(String resultList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> stringList = prefs.getStringList(ShPrefKeys.dateList) ?? [];
    return stringList;
  }

  Future<void> saveDatesList(List<String> stringList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ShPrefKeys.dateList, stringList);
  }

  Future<List<ToDo>> getToDoList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? storedTodos = prefs.getString(ShPrefKeys.todoList);
    if (storedTodos == null) {
      return [];
    }
    final List<dynamic> decoded = json.decode(storedTodos);
    return decoded.map((item) => ToDo.fromJson(item)).toList();
  }

  Future<void> saveToDoList(List<ToDo> todos) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<Map<String, dynamic>> todosMapList = todos.map((todo) => todo.toJson()).toList();
    final String encoded = json.encode(todosMapList);
    await prefs.setString(ShPrefKeys.todoList, encoded);
  }
}
