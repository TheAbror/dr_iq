import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';

class QuestionText extends StatelessWidget {
  final String textQuestion;

  const QuestionText({
    super.key,
    required this.textQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.textMain,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(),
      ),
      child: Center(
        child: Text(
          textQuestion,
          style: TextStyle(
            color: AppColors.float,
            fontWeight: FontWeight.bold,
            fontSize: 24.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
