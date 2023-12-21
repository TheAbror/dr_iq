// ignore_for_file: avoid_print, unnecessary_null_comparison, use_build_context_synchronously
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/constants/global_constants.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_tab/bloc/questions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rive/rive.dart';

Future<dynamic> finishDialog(BuildContext context, QuestionsState state) {
  var questionsLength = GlobalConstants.testQuestions.length;

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: const Text(
                'Congratulations!!!',
                style: TextStyle(
                  color: AppColors.textMain,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 390.h,
              width: 400.w,
              child: const RiveAnimation.asset('assets/images/5103-10277-handshake.riv'),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                '${state.result.toString()} out of $questionsLength',
                style: TextStyle(
                  color: AppColors.textMain,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
            ),
            const SizedBox(height: 35),
            TextButton(
              onPressed: () async {
                var preferencesServices = PreferencesServices();

                final dateFormatter = DateFormat('dd-MM-yyyy, HH:mm');
                final today = DateTime.now();
                var formattedDates = dateFormatter.format(today);

                var resultOfTests = ((state.result / questionsLength) * 100).toString();

                List<String>? existingResultsList = await preferencesServices.getResultList(ShPrefKeys.resultList);
                List<String>? existingDateList = await preferencesServices.getDatesList(ShPrefKeys.dateList);

                if (existingResultsList != null) {
                  existingResultsList.add(resultOfTests);
                } else {
                  existingResultsList = [resultOfTests];
                }
                await preferencesServices.saveStringList(existingResultsList);
                //
                if (existingDateList != null) {
                  existingDateList.add(formattedDates);
                } else {
                  existingDateList = [formattedDates];
                }
                await preferencesServices.saveDatesList(existingDateList);

                // Close the dialog
                Navigator.of(dialogContext).pop();

                _handleNavigation(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AppColors.textMain,
                ),
              ),
              child: const Text(
                'Close',
                style: TextStyle(
                  color: AppColors.float,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _handleNavigation(BuildContext context) {
  Navigator.pop(context);
  Navigator.pop(context);
}
