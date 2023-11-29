// ignore_for_file: constant_identifier_names, unnecessary_nullable_for_final_variable_declarations
import 'package:dr_iq/ui/home_page/tabs/todos_page/model/todo_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_iq/core/constants/app_strings.dart';
import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';

part 'todos_state.dart';

class TodosBloc extends Cubit<TodosState> {
  final PreferencesServices _preferencesServices = PreferencesServices();

  TodosBloc() : super(TodosState.initial()) {
    _loadResults();
  }

  Future<void> _loadResults() async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));

    try {
      final List<ToDo> result = await _preferencesServices.getToDoList();
      emit(
        state.copyWith(
          todosList: result,
          blocProgress: BlocProgress.LOADED,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        blocProgress: BlocProgress.FAILED,
        failureMessage: AppStrings.internalErrorMessage,
      ));
    }
  }
}
