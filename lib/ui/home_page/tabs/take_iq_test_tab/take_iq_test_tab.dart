// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';
import 'package:dr_iq/core/global_constants.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/bloc/questions_bloc.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/finish_dialog.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/my_spacer.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/options_text.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/question_text.dart';

class TakeIQTest extends StatefulWidget {
  const TakeIQTest({super.key});

  @override
  State<TakeIQTest> createState() => _TakeIQTestState();
}

class _TakeIQTestState extends State<TakeIQTest> {
  @override
  Widget build(BuildContext context) {
    var questionsLength = GlobalConstants.questions.length;
    print(questionsLength);
    return Scaffold(
      appBar: _takeIQTestAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: BlocProvider(
            create: (context) => QuestionsBloc(),
            child: BlocConsumer<QuestionsBloc, QuestionsState>(
              listener: (context, state) async {
                if (questionsLength == state.isLast) {
                  finishDialog(context, state);
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    SizedBox(height: 20.h),
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: questionsLength,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              QuestionText(counter: state.questionCounter),
                              MySpacer(),
                              OptionsText(counter: state.questionCounter),
                              SizedBox(height: 100.h),
                            ],
                          );
                        },
                      ),
                    ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: iconsList,
                    // ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  AppBar _takeIQTestAppBar() {
    return AppBar(
      backgroundColor: AppColors.textMain,
      centerTitle: true,
      title: Text(
        'Test',
        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}




  // if (state.blocProgress == BlocProgress.IS_LOADING) {
                //   return const PrimaryLoader();
                // }

                // if (state.blocProgress == BlocProgress.FAILED) {
                //   return const SomethingWentWrong();
                // }

                // final counter = state.counter;
                // final iconsList = state.icons;