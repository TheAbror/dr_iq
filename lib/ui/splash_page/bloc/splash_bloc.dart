import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_iq/ui/splash_page/splash_auth_status.dart';

class SplashBloc extends Cubit<SplashAuthStatus> {
  SplashBloc() : super(SplashAuthStatus.initial);

  Future setupInitialSettings() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashAuthStatus.authorized);
  }
}
