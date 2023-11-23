import 'package:dr_iq/ui/home_page/tabs/todos_page/colors/todo_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
