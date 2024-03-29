// ignore_for_file: avoid_print, unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/bloc/questions_bloc.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/finish_dialog.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/my_spacer.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/options_text.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/widgets/question_text.dart';

class TakeIQTest extends StatelessWidget {
  final List<Map<String, dynamic>> questions;

  const TakeIQTest({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questionsLength = questions.length;
    print(questionsLength);
    return Scaffold(
      appBar: _takeIQTestAppBar(context),
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
                final iconsList = state.icons;
                return Column(
                  children: [
                    SizedBox(height: 20.h),
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: questionsLength,
                        itemBuilder: (context, index) {
                          var myValue = questions[state.questionCounter]["options"][index]["option_text"];

                          return Column(
                            children: [
                              QuestionText(
                                textQuestion: questions[state.questionCounter]['question_text'],
                              ),
                              MySpacer(),
                              OptionsText(
                                state: state,
                                optionText: myValue,
                                options: questions,
                              ),
                              Spacer(),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: iconsList,
                    ),
                    SizedBox(height: 10.h),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  AppBar _takeIQTestAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.textMain,
      centerTitle: true,
      title: Text(
        'Test',
        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        color: AppColors.float,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
