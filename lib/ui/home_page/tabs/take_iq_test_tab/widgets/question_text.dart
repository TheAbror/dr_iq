import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';
import 'package:dr_iq/core/global_constants.dart';

class QuestionText extends StatelessWidget {
  final int counter;

  const QuestionText({
    super.key,
    required this.counter,
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
          GlobalConstants.testQuestions[counter]['question_text'],
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
