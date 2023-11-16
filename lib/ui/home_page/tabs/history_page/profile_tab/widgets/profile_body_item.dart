import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBodyItem extends StatelessWidget {
  final IconData icons;
  final String text;

  const ProfileBodyItem({
    Key? key,
    required this.icons,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    icons,
                    color: AppColors.float,
                    size: 29.sp,
                  ),
                  SizedBox(width: 30.w),
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.float,
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.float,
          thickness: 1.h,
        ),
      ],
    );
  }
}
