import 'package:flutter/cupertino.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:dr_iq/core/roots/custom_cupertino_route.dart';
import 'package:dr_iq/ui/home_page/home_page.dart';
import 'package:dr_iq/ui/home_page/profile_page/profile_page.dart';
import 'package:dr_iq/ui/home_page/tabs/history_page/history_page.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_page/take_iq_test_page.dart';
import 'package:dr_iq/ui/home_page/tabs/todos_page.dart/todos_page.dart';
import 'package:dr_iq/ui/sign_in_page/sign_in_page.dart';
import 'package:dr_iq/ui/splash_page/splash_page.dart';

class MainRouteGenerator {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashPage:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const SplashPage(),
        );
      case AppRoutes.homePage:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const HomePage(),
        );
      case AppRoutes.signin:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const SignInPage(),
        );
      case AppRoutes.takeiqtest:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => TakeIQTest(),
        );
      case AppRoutes.historyPage:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const HistoryPage(),
        );
      case AppRoutes.profilePage:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const ProfilePage(),
        );
      case AppRoutes.todos:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const ToDosPage(),
        );

      default:
        return CustomCupertinoStyleNavigationRoute(
          builder: (_) => const SplashPage(),
        );
    }
  }
}
