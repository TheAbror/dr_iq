import 'package:equatable/equatable.dart';
import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';

abstract class BlocProgressState extends Equatable {
  final BlocProgress blocProgress;
  final String? failureMessage;

  const BlocProgressState({
    required this.blocProgress,
    this.failureMessage,
  });

  List<Object?> get blocProps;

  @override
  List<Object?> get props => [blocProgress, failureMessage, ...blocProps];
}
