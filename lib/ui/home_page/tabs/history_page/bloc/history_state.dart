part of 'history_bloc.dart';

class HistoryState extends Equatable {
  final List<String> dateList;
  final List<String> resultList;
  final BlocProgress blocProgress;
  final String failureMessage;

  const HistoryState({
    required this.dateList,
    required this.resultList,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory HistoryState.initial() {
    return HistoryState(
      dateList: const [],
      resultList: const [],
      blocProgress: BlocProgress.IS_LOADING,
      failureMessage: '',
    );
  }

  HistoryState copyWith({
    List<String>? dateList,
    List<String>? resultList,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return HistoryState(
      dateList: dateList ?? this.dateList,
      resultList: resultList ?? this.resultList,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        dateList,
        resultList,
        blocProgress,
        failureMessage,
      ];
}
