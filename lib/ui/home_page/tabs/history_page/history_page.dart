import 'package:dr_iq/core/hive/box_person.dart';
import 'package:dr_iq/core/hive/result.dart';
import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/constants/something_went_wrong.dart';
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
            Result? myResult = boxResult.get(ShPrefKeys.result);

            if (myResult?.result.isEmpty ?? true) {
              return const NoRecordsFound();
            }

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    height: 300.h,
                    child: MyLineChart(
                      isShowingMainData: true,
                      results: state.resultList,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: boxResult.length,
                    itemBuilder: (context, index) {
                      Result? result = boxResult.getAt(index);

                      return HistoryBodyItem(
                        index: (index + 1).toString(),
                        date: result?.date[index].substring(0, result.date[index].indexOf('2023') + 4) ?? '',
                        time: '\n${result?.date[index].substring(result.date[index].indexOf(',') + 1)}',
                        score: result?.result[index] ?? '',
                      );
                    },
                    separatorBuilder: (context, index) => Divider(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
