import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dr_iq/ui/splash_page/splash_auth_status.dart';

class SplashBloc extends Cubit<SplashAuthStatus> {
  SplashBloc() : super(SplashAuthStatus.initial);

  Future setupInitialSettings() async {
    // final token = await PreferencesServices.getToken();

    await Future.delayed(const Duration(seconds: 2000));

    // emit(token == null ? SplashAuthStatus.notAuthorized : SplashAuthStatus.authorized);
    emit(SplashAuthStatus.authorized);
  }
}
