// ignore_for_file: unused_field

import 'dart:convert';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/colors/todo_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/widgets/todo_item.dart';
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
    _loadToDoList();
  }

  Future<void> _loadToDoList() async {
    try {
      List<String> loadedTodoStrings = await PreferencesServices().getToDoList();
      List<ToDo> loadedTodos = loadedTodoStrings.map((todoString) => ToDo.fromJson(jsonDecode(todoString))).toList();
      setState(() {
        todosList.addAll(loadedTodos);
        _foundToDo = todosList;
      });
    } catch (e) {
      // Handle error
      // ignore: avoid_print
      print("Error loading ToDo list: $e");
    }
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

      // Convert the List<ToDo> to List<String>
      List<String> todoStrings = todosList.map((todo) => jsonEncode(todo.toJson())).toList();

      // Save updated ToDo list to SharedPreferences
      PreferencesServices().saveToDoList(todoStrings);
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

      // Convert the List<ToDo> to List<String>
      List<String> todoStrings = todosList.map((todo) => jsonEncode(todo.toJson())).toList();

      // Save updated ToDo list to SharedPreferences
      PreferencesServices().saveToDoList(todoStrings);

      // Clear the text field
      _todoController.clear();
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
}

class SearchBox extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBox({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textMain, width: 0.33.w),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke, width: 0.33.w),
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: tdGrey,
        ),
      ),
    );
  }
}

class AddNewToDo extends StatelessWidget {
  final Function(String) onAddToDo;
  final TextEditingController controller;

  const AddNewToDo({
    Key? key,
    required this.onAddToDo,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 35.h,
              right: 20,
              left: 20,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 5.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 5,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: const TextStyle(fontWeight: FontWeight.bold),
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Add a new todo item',
                border: InputBorder.none,
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 35.h,
            right: 20,
          ),
          child: ElevatedButton(
            onPressed: () {
              onAddToDo(controller.text);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: tdBlue, minimumSize: const Size(60, 60), elevation: 5, padding: EdgeInsets.zero),
            child: Text(
              '+',
              style: TextStyle(fontSize: 50.sp),
            ),
          ),
        ),
      ]),
    );
  }
}

class ToDoList extends StatelessWidget {
  final List<ToDo> todos;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;

  const ToDoList({
    Key? key,
    required this.todos,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 40,
            bottom: 20,
          ),
          child: const Text(
            'All ToDos',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        for (ToDo todo in todos) ToDoItem(todo: todo, onToDoChanged: onToDoChanged, onDeleteItem: onDeleteItem),
      ],
    );
  }
}
