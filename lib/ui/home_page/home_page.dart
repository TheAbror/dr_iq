import 'dart:math';
import 'package:dr_iq/core/constants/global_constants.dart';
import 'package:dr_iq/core/hive/box_person.dart';
import 'package:dr_iq/core/hive/person.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/home_page_item.dart';

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

  Person? person = boxPersons.get('name&age');

  @override
  void initState() {
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller4 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller5 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    _controller6 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });

    super.initState();
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Text(
              'Hi ${person?.name}',
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
                    //
                    List<List<Map<String, dynamic>>> questionsList = [
                      GlobalConstants.logicalReasoning,
                      GlobalConstants.randomQuestions,
                      GlobalConstants.criticalThinkingQuestions,
                      GlobalConstants.math,
                      GlobalConstants.generalKnowledge,
                      GlobalConstants.countries,
                      GlobalConstants.verbalReasoning,
                      GlobalConstants.analyticalReasoning,
                      GlobalConstants.trickyQuestions,
                      GlobalConstants.moreTrickyQuestions,
                      GlobalConstants.testQuestions,
                      GlobalConstants.missingSection,
                    ];

                    int randomIndex = Random().nextInt(questionsList.length);

                    List<Map<String, dynamic>> randomQuestions = questionsList[randomIndex];

                    Navigator.pushNamed(
                      context,
                      AppRoutes.takeiqtest,
                      arguments: randomQuestions,
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
        ),
      ),
    );
  }
}
