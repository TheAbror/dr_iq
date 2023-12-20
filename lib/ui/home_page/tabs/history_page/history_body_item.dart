import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class HistoryBodyItem extends StatelessWidget {
  final String index;
  final String scores;
  final String dates;
  final String time;

  const HistoryBodyItem({
    Key? key,
    required this.index,
    required this.scores,
    required this.dates,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
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
            'Score: $scores',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '$dates\n$time',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(), // Add a divider between list items
      ],
    );
  }
}
