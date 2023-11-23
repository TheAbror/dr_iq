import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/widgets/todo_item.dart';
import 'package:flutter/material.dart';

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
