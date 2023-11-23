import 'package:dr_iq/ui/home_page/tabs/profile_tab/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/api/api_provider.dart';
import 'package:dr_iq/core/roots/main_route_generator.dart';
import 'package:dr_iq/core/roots/logger.dart';
import 'package:dr_iq/ui/splash_page/splash_auth_status.dart';

import 'ui/splash_page/bloc/splash_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// For logging
  setUpLogging();

  ApiProvider.create();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ProfileBloc()),
            BlocProvider(create: (context) => SplashBloc()),
          ],
          child: const MyApp(),
        ),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashAuthStatus>(
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                fontFamily: 'Raleway',
                primarySwatch: Colors.blue,
              ),
              onGenerateRoute: MainRouteGenerator().generateRoute,
              // home: const HomePage(),
            );
          },
        );
      },
    );
  }
}
