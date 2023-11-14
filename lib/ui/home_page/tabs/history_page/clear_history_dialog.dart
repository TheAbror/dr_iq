import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/core/roots/app_routes.dart';

Future<dynamic> clearHistory(BuildContext context) {
  return showPlatformDialog(
    context: context,
    builder: (context) => BasicDialogAlert(
      title: const Text('Clear History?'),
      content: const Text('Do you want to delete all records permanently'),
      actions: <Widget>[
        BasicDialogAction(
          title: const Text('Yes'),
          onPressed: () {
            //todo clear only history
            PreferencesServices.clearAll().then((value) {
              if (value) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.homePage,
                  (route) => false,
                );
              }
            });
          },
        ),
        BasicDialogAction(
          title: const Text('No'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
