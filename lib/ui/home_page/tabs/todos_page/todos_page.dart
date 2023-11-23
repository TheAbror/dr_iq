// ignore_for_file: unused_field

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
      body: const ReorderableExample(),
    );
  }
}

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({super.key});

  @override
  State<ReorderableExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableExample> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
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
              searchBox(),
              Expanded(
                child: ListView(
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
                    for (ToDo todoo in _foundToDo.reversed)
                      ToDoItem(
                        todo: todoo,
                        onToDoChanged: _handleToDoChange,
                        onDeleteItem: _deleteToDoItem,
                      ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
        addNewToDo(),
      ],
    );
  }

  Align addNewToDo() {
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              controller: _todoController,
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
              _addToDoItem(_todoController.text);
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

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
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

  Widget searchBox() {
    return TextField(
      onChanged: (value) => _runFilter(value),
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
