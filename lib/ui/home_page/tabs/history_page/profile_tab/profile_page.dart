import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String name;
  late String age;
  late String phone;
  late String email;

  void callDB() async {
    String? nameD = await PreferencesServices.getName();
    String? ageD = await PreferencesServices.getAge();

    if (nameD != null) {
      name = nameD;
    }
    if (ageD != null) {
      age = ageD;
    }

    /// Assign Not Given ///
    if (name == '') {
      name = 'User';
    }
    if (age == '') {
      age = 'Not Given';
    }
    if (phone == '') {
      phone = 'Not Given';
    }

    if (email == '') {
      email = 'Not Given';
    }

    setState(() {});
  }

  @override
  void initState() {
    callDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      body: _Body(
        name: name,
        age: age,
        phone: phone,
        email: email,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final String name;
  final String age;
  final String phone;
  final String email;

  const _Body({
    Key? key,
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
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
            ProfileBodyItem(text: name, icons: Icons.person),
            ProfileBodyItem(text: age, icons: Icons.calendar_month),
            ProfileBodyItem(text: phone, icons: Icons.phone),
            ProfileBodyItem(text: email, icons: Icons.email),
            Spacer(flex: 2),
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
            Spacer(),
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
