part of 'todos_bloc.dart';

class TodosState extends Equatable {
  final List<String> todosList;
  final BlocProgress blocProgress;
  final String failureMessage;

  const TodosState({
    required this.todosList,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory TodosState.initial() {
    return TodosState(
      todosList: const [],
      blocProgress: BlocProgress.IS_LOADING,
      failureMessage: '',
    );
  }

  TodosState copyWith({
    List<String>? todosList,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return TodosState(
      todosList: todosList ?? this.todosList,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        todosList,
        blocProgress,
        failureMessage,
      ];
}
