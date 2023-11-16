part of 'bottom_sheet_data_bloc.dart';

class BottomSheetDataState extends Equatable {
  final String selectedValue;
  final List<String> initialList;
  final List<String> searchedList;
  final bool isButtonEnabled;
  final BlocProgress blocProgress;
  final String failureMessage;

  const BottomSheetDataState({
    required this.selectedValue,
    required this.initialList,
    required this.searchedList,
    required this.isButtonEnabled,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory BottomSheetDataState.initial({
    required String initialValue,
    required List<String> initialList,
  }) {
    return BottomSheetDataState(
      selectedValue: initialValue,
      initialList: initialList,
      searchedList: initialList,
      isButtonEnabled: false,
      blocProgress: BlocProgress.NOT_STARTED,
      failureMessage: '',
    );
  }

  BottomSheetDataState copyWith({
    String? selectedValue,
    List<String>? initialList,
    List<String>? searchedList,
    bool? isButtonEnabled,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return BottomSheetDataState(
      selectedValue: selectedValue ?? this.selectedValue,
      initialList: initialList ?? this.initialList,
      searchedList: searchedList ?? this.searchedList,
      isButtonEnabled: isButtonEnabled ?? this.isButtonEnabled,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        selectedValue,
        initialList,
        searchedList,
        isButtonEnabled,
        blocProgress,
        failureMessage,
      ];
}
