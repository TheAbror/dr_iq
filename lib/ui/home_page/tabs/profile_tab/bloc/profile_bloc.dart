// ignore_for_file: unused_local_variable

import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:dr_iq/core/hive/box_person.dart';
import 'package:dr_iq/core/hive/person.dart';
import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  void loadData() async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));

    Person? person = boxPersons.get(ShPrefKeys.personInfo);

    emit(
      state.copyWith(
        name: person?.name ?? '',
        age: person?.age ?? '',
        phone: person?.phone ?? '',
        email: person?.email ?? '',
      ),
    );

    emit(state.copyWith(blocProgress: BlocProgress.LOADED));
  }
}
