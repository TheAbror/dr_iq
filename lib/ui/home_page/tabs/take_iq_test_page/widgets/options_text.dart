// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';
import 'package:dr_iq/core/global_constants.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_page/bloc/questions_bloc.dart';

class OptionsText extends StatelessWidget {
  final int counter;

  const OptionsText({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        var myValue = GlobalConstants.questions[counter]["options"][index];

        return GestureDetector(
          onTap: () {
            var isCorrect = myValue["is_correct"];
            context.read<QuestionsBloc>().toNextQuestion();
            print('Selected value: ${myValue["option_text"]}');
            print('Is Correct: $isCorrect');
            if (isCorrect == true) {
              context.read<QuestionsBloc>().resultOfTest();
            }
            // resultOfTest
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
  }
}

// ListView.builder(
  //     shrinkWrap: true,
  //     physics: NeverScrollableScrollPhysics(),
  //     itemCount: widget.state.questions[widget.counter].options.length,
  //     itemBuilder: (context, optionIndex) {
  //       int? selectedOptionIndex;
  //       return Builder(
  //         builder: (context) {
  //           var questionCounter = widget.state.questions.length;
  //           return GestureDetector(
  //             onTap: () {
  //               context.read<QuestionsBloc>().toNextQuestion;
                // setState(() {
                //   selectedOptionIndex = optionIndex;
                // });
                // var abc = widget.state.questions[widget.counter].options[selectedOptionIndex ?? 0].option;
                // var abcBool = widget.state.questions[widget.counter].options[selectedOptionIndex ?? 0].isCorrect;
                // print('Selected value: $abc');
                // print('$abcBool');
                // if (abcBool) {
                //   context.read<QuestionsBloc>().isCorrect(widget.counter, questionCounter);
                // } else {
                //   context.read<QuestionsBloc>().isInCorrect(widget.counter, questionCounter);
                // }
  //             },
