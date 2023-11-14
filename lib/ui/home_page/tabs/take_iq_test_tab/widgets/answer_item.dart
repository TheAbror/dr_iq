import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';

class AnwerItem extends StatelessWidget {
  final String letter;
  final String text;
  final VoidCallback? onTap;

  const AnwerItem({
    Key? key,
    required this.letter,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: AppColors.float,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.textMain,
            width: 0.5.w,
          ),
        ),
        child: Row(
          children: [
            Text(
              letter,
              style: TextStyle(fontSize: 24.sp),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 24.sp),
            ),
          ],
        ),
      ),
    );
  }
}
