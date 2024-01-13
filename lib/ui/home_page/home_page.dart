import 'dart:math';

import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/preference_services/questions_list_random.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:dr_iq/ui/home_page/tabs/profile_tab/bloc/profile_bloc.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/home_page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  late AnimationController _controller4;
  late AnimationController _controller5;
  late AnimationController _controller6;

  @override
  void initState() {
    _controller1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    _controller2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    _controller3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    _controller4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    _controller5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    _controller6 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200), lowerBound: 0.0, upperBound: 0.1)
          ..addListener(() {
            setState(() {});
          });

    context.read<ProfileBloc>().loadData();
    super.initState();

    homeDialog();
  }

  Future<dynamic> homeDialog() async {
    return Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 530.h,
                    width: 350.w,
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: AppColors.float,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            '''Welcome to our IQ training program designed to boost your intelligence quotient! The journey to enhancing your IQ score begins here, and we encourage you to approach it with a positive and determined mindset.
                                        
It's important to note that everyone starts at different levels, and initial scores may vary. If you find that your scores are not as high as you'd like them to be at first, don't be discouraged. Remember, this platform is a learning and training environment that covers a diverse range of topics. The key to success is consistent effort, continuous learning, and dedicated training.
                                        
So, stay motivated, persevere through any initial challenges, and enjoy the process of boosting your IQ. Your dedication to learning and training here will undoubtedly contribute to your intellectual growth across various topics. \n\nGood luck on your journey to unlocking your full potential!''',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.float,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.h),
        child: Container(
          height: 120.h,
          color: AppColors.float,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
              ),
              SvgPicture.asset(
                'assets/images/Component 3.svg',
                height: 60.h,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Text(
                  'Hi ${state.name}',
                  style: TextStyle(fontSize: 24.sp),
                ),
                Text(
                  'Welcome to Dr.iQ',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomePageItem(
                      controller: _controller1,
                      icon: Icons.text_increase_sharp,
                      text: 'Take IQ Test',
                      color: const Color(0xffc30010),
                      onTap: () {
                        int randomIndex = Random().nextInt(QuestionsListRandom.questionsList.length);

                        Navigator.pushNamed(
                          context,
                          AppRoutes.takeiqtest,
                          arguments: QuestionsListRandom.questionsList[randomIndex],
                        );
                      },
                    ),
                    HomePageItem(
                      controller: _controller2,
                      icon: Icons.add_task_sharp,
                      text: 'Todos',
                      color: AppColors.iconMain,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.todos);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomePageItem(
                      controller: _controller3,
                      icon: Icons.school_outlined,
                      text: 'Improve IQ',
                      color: Colors.blue.shade900,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.improveIQ);
                      },
                    ),
                    HomePageItem(
                      controller: _controller4,
                      icon: Icons.person_add_alt_1_outlined,
                      text: 'Profile  ',
                      color: AppColors.profileColor,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.profilePage);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomePageItem(
                      controller: _controller5,
                      icon: Icons.data_object_outlined,
                      text: 'History',
                      color: AppColors.historyPageColor,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.historyPage);
                      },
                    ),
                    HomePageItem(
                      controller: _controller6,
                      icon: Icons.adobe_outlined,
                      text: 'About IQ',
                      color: AppColors.primary,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.aboutTab);
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
