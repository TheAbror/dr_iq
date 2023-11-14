import 'package:flutter/cupertino.dart';

class CustomCupertinoStyleNavigationRoute extends CupertinoPageRoute {
  @override
  bool get hasScopedWillPopCallback => false;

  CustomCupertinoStyleNavigationRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
