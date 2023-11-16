// ignore_for_file: constant_identifier_names, avoid_print
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';
import 'package:dr_iq/core/global_constants.dart';

part 'questions_state.dart';

class QuestionsBloc extends Cubit<QuestionsState> {
  QuestionsBloc() : super(QuestionsState.initial());
  var questionsLength = GlobalConstants.testQuestions.length;

  void toNextQuestion() {
    if (questionsLength > state.questionCounter + 1) {
      emit(state.copyWith(questionCounter: state.questionCounter + 1));
    }
    if (questionsLength >= state.isLast + 1) {
      emit(state.copyWith(isLast: state.isLast + 1));
    }
    print('-------' ' ${state.questionCounter}' ' ---------');
  }

  void resultOfTest() {
    if (questionsLength >= state.questionCounter + 1) {
      emit(state.copyWith(result: state.result + 1));

      print('Result:' ' ${state.result}');
    }
    isCorrect();
  }

  void isCorrect() {
    var stateIcons = List<Icon>.from(state.icons);
    stateIcons.add(
      Icon(
        Icons.done,
        color: AppColors.success,
        size: 37.sp,
      ),
    );

    emit(state.copyWith(icons: stateIcons));
  }

  void isInCorrect() {
    var stateIcons = List<Icon>.from(state.icons);
    stateIcons.add(
      Icon(
        Icons.error,
        color: AppColors.error,
        size: 37.sp,
      ),
    );

    emit(state.copyWith(icons: stateIcons));
  }
}
