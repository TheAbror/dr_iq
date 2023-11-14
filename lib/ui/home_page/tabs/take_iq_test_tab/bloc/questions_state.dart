part of 'questions_bloc.dart';

class QuestionsState extends Equatable {
  final int result;
  final int isLast;
  final List<Icon> icons;
  final int questionCounter;

  const QuestionsState({
    required this.result,
    required this.isLast,
    required this.icons,
    required this.questionCounter,
  });

  factory QuestionsState.initial() {
    return QuestionsState(
      result: 0,
      isLast: 0,
      icons: const [],
      questionCounter: 0,
    );
  }

  QuestionsState copyWith({
    int? result,
    int? isLast,
    List<Icon>? icons,
    int? questionCounter,
  }) {
    return QuestionsState(
      result: result ?? this.result,
      isLast: isLast ?? this.isLast,
      icons: icons ?? this.icons,
      questionCounter: questionCounter ?? this.questionCounter,
    );
  }

  @override
  List<Object?> get props => [
        result,
        isLast,
        icons,
        questionCounter,
      ];
}
