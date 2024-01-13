// ignore_for_file: avoid_print

import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/bloc/questions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionsText extends StatelessWidget {
  final String optionText;
  final QuestionsState state;

  final List<Map<String, dynamic>> options;

  const OptionsText({
    super.key,
    required this.optionText,
    required this.state,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionsBloc, QuestionsState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            var myValue = options[state.questionCounter]["options"][index];
            return GestureDetector(
              onTap: () {
                if (state.isLast + 1 <= 10) {
                  var isCorrect = myValue["is_correct"];
                  context.read<QuestionsBloc>().toNextQuestion();
                  print('Selected value: ${myValue["option_text"]}');
                  print('Is Correct: $isCorrect');
                  if (isCorrect == true) {
                    context.read<QuestionsBloc>().resultOfTest();
                  } else {
                    context.read<QuestionsBloc>().isInCorrect();
                  }
                }
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8.h),
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: AppColors.textMain,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(),
                ),
                child: Text(
                  myValue["option_text"],
                  style: const TextStyle(
                    color: AppColors.emirald,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
