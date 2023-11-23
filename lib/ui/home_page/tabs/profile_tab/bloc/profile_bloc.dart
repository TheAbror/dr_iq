// ignore_for_file: unused_local_variable

import 'package:dr_iq/core/bloc_progress/bloc_progress.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  void loadData() async {
    emit(state.copyWith(blocProgress: BlocProgress.IS_LOADING));

    late String name = 'User';
    late String age = 'Not Given';
    late String phone = 'Not Given';
    late String email = 'Not Given';

    void callDB() async {
      String? nameD = await PreferencesServices.getName();
      String? ageD = await PreferencesServices.getAge();
      String? phoneD = await PreferencesServices.getPhone();
      String? emailD = await PreferencesServices.getEmail();

      // Assign retrieved values or default values if null
      name = nameD != null && nameD.isNotEmpty ? nameD : 'User';
      age = ageD != null && ageD.isNotEmpty ? ageD : 'Not Given';
      phone = phoneD != null && phoneD.isNotEmpty ? phoneD : 'Not Given';
      email = emailD != null && emailD.isNotEmpty ? emailD : 'Not Given';

      emit(
        state.copyWith(
          name: nameD,
          age: ageD,
          phone: phoneD,
          email: emailD,
        ),
      );
    }

    callDB();
    emit(state.copyWith(blocProgress: BlocProgress.LOADED));
  }
}
