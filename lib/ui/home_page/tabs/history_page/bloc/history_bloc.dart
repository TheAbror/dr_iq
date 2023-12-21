// ignore_for_file: constant_identifier_names, unnecessary_nullable_for_final_variable_declarations
import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:dr_iq/core/constants/app_strings.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'history_state.dart';

class HistoryBloc extends Cubit<HistoryState> {
  final PreferencesServices _preferencesServices = PreferencesServices();

  HistoryBloc() : super(HistoryState.initial()) {
    _loadResults();
  }

  Future<void> _loadResults() async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));

    try {
      final List<String>? result = await _preferencesServices.getResultList(ShPrefKeys.resultList);
      final List<String>? dates = await _preferencesServices.getDatesList(ShPrefKeys.dateList);
      if (result != null && dates != null) {
        emit(
          state.copyWith(
            dateList: dates,
            resultList: result,
            blocProgress: BlocProgress.LOADED,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(
        blocProgress: BlocProgress.FAILED,
        failureMessage: AppStrings.internalErrorMessage,
      ));
    }
  }
}
