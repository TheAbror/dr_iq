import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page/colors/todo_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
