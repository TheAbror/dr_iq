// ignore_for_file: unused_field
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/widgets/add_new_todo.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/widgets/search_box.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/widgets/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class ToDosPage extends StatelessWidget {
  const ToDosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.iconMain,
        title: Text(
          'ToDos',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          color: AppColors.float,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ReorderableExample(),
    );
  }
}

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({super.key});

  @override
  State<ReorderableExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableExample> {
  final List<ToDo> todosList = [];
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Load ToDo list from SharedPreferences
    _loadToDoList();
  }

  Future<void> _loadToDoList() async {
    List<ToDo> loadedTodos = await PreferencesServices().getToDoList();
    setState(() {
      todosList.addAll(loadedTodos);
      _foundToDo = todosList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              SearchBox(onSearch: _runFilter),
              Expanded(
                child: ToDoList(
                  todos: _foundToDo.reversed.toList(),
                  onToDoChanged: _handleToDoChange,
                  onDeleteItem: _deleteToDoItem,
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
        AddNewToDo(onAddToDo: _addToDoItem, controller: _todoController),
      ],
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);

      // Save updated ToDo list to SharedPreferences
      PreferencesServices().saveToDoList(todosList);
    });
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList.where((item) => item.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }

  void _addToDoItem(String todoText) {
    setState(() {
      // Add the new ToDo item
      ToDo newTodo = ToDo(
        id: UniqueKey().toString(),
        todoText: todoText,
        isDone: false,
      );

      todosList.add(newTodo);
      _foundToDo = todosList;

      // Save updated ToDo list to SharedPreferences
      PreferencesServices().saveToDoList(todosList);

      // Clear the text field
      _todoController.clear();
    });
  }
}
