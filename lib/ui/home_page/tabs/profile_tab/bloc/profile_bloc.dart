// ignore_for_file: constant_identifier_names, unnecessary_nullable_for_final_variable_declarations
import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  void changeProfileInfo(String name, String age, String phone, String email) async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));
  }
}