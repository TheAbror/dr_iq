import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileInfoButton extends StatelessWidget {
  const EditProfileInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        color: AppColors.float,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.float,
          width: 0.5.w,
        ),
      ),
      child: Center(
        child: Text(
          'Edit Account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
