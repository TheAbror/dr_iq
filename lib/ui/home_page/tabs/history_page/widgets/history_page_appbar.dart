import 'package:flutter/material.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/clear_history_dialog.dart';

AppBar historyPageAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.historyPageColor,
    elevation: 1,
    title: const Text(
      'History',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      color: AppColors.float,
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.delete,
        ),
        onPressed: () {
          clearHistory(context);
        },
      )
    ],
  );
}
