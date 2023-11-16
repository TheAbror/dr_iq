// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/constants/primary_loader.dart';
import 'package:dr_iq/core/constants/something_went_wrong.dart';
import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/bloc/history_bloc.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/history_body_item.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/widgets/history_page_appbar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: historyPageAppBar(context),
      body: BlocProvider(
        create: (context) => HistoryBloc(),
        child: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            if (state.blocProgress == BlocProgress.IS_LOADING) {
              return const PrimaryLoader();
            }
            if (state.blocProgress == BlocProgress.FAILED) {
              return const SomethingWentWrong();
            }
            if (state.resultList.isEmpty) {
              return const NoRecordsFound();
            }
            return ListView.separated(
              itemCount: state.dateList.length,
              itemBuilder: (context, index) {
                var date = state.dateList[index];
                return HistoryBodyItem(
                  index: (index + 1).toString(),
                  date: date.substring(0, date.indexOf('2023') + 4),
                  time: '\n${date.substring(date.indexOf(',') + 1)}',
                  score: state.resultList[index],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  height: 1.h,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
