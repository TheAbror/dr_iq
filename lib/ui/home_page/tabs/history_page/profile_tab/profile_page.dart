import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      // appBar: AppBar(
      //   backgroundColor: AppColors.float,
      //   elevation: 0,
      //   leading: const BackButton(color: AppColors.textMain),
      //   title: const Text(
      //     '',
      //     // 'Profile',
      //     style: TextStyle(
      //       color: AppColors.textMain,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0.h,
          child: Container(
            padding: EdgeInsets.all(2.h),
            height: 610.h,
            width: 430.w,
            decoration: BoxDecoration(
              color: AppColors.profileColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.r),
                topLeft: Radius.circular(25.r),
              ),
              //
            ),
            alignment: Alignment.center,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 350.h),
            ProfileBodyItem(text: 'Abror Shamuradov', icons: Icons.person),
            ProfileBodyItem(text: 'Birthday', icons: Icons.calendar_month),
            ProfileBodyItem(text: 'Phone', icons: Icons.phone),
            ProfileBodyItem(text: 'Email', icons: Icons.email),
            ProfileBodyItem(text: 'Facebook account', icons: Icons.facebook),
            SizedBox(height: 100.h),
            Container(
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
            ),
          ],
        ),
        Positioned(
          top: 140.h,
          child: CircleAvatar(
            backgroundColor: AppColors.profileColor,
            radius: 70,
            child: Icon(
              Icons.person,
              size: 80,
              color: AppColors.float,
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          left: 20.w,
          child: BackButton(color: AppColors.profileColor),
        ),
      ],
    );
  }
}

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
