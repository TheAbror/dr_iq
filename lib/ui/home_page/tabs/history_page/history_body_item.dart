import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';

class HistoryBodyItem extends StatelessWidget {
  final String index;
  final String score;
  final String date;
  final String time;

  const HistoryBodyItem({
    Key? key,
    required this.index,
    required this.score,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.historyPageColor,
        child: Text(
          index,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.float,
          ),
        ),
      ),
      title: Text(
        'Score: $score  ',
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        date + time,
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
