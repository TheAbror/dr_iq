part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final String name;
  final String age;
  final String phone;
  final String email;
  final BlocProgress blocProgress;
  final String failureMessage;

  const ProfileState({
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory ProfileState.initial() {
    return ProfileState(
      name: '',
      age: '',
      phone: '',
      email: '',
      blocProgress: BlocProgress.IS_LOADING,
      failureMessage: '',
    );
  }

  ProfileState copyWith({
    String? name,
    String? age,
    String? phone,
    String? email,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return ProfileState(
      name: name ?? this.name,
      age: age ?? this.age,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        name,
        age,
        phone,
        email,
        blocProgress,
        failureMessage,
      ];
}
