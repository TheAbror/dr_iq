import 'package:dr_iq/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionsText extends StatelessWidget {
  final String optionText;

  const OptionsText({
    super.key,
    required this.optionText,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8.h),
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: AppColors.textMain,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(),
          ),
          child: Text(
            optionText,
            style: const TextStyle(
              color: AppColors.emirald,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
