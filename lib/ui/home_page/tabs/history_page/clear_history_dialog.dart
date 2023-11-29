import 'package:dr_iq/core/preference_services/shpref_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<dynamic> clearHistory(BuildContext context) {
  return showPlatformDialog(
    context: context,
    builder: (context) => BasicDialogAlert(
      title: const Text('Clear History?'),
      content: const Text('Do you want to delete all records permanently'),
      actions: <Widget>[
        BasicDialogAction(
          title: const Text('Yes'),
          onPressed: () async {
            // Obtain shared preferences.
            final SharedPreferences prefs = await SharedPreferences.getInstance();

            await prefs.remove(ShPrefKeys.dateList);
            await prefs.remove(ShPrefKeys.resultList);
            // ignore: use_build_context_synchronously
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.homePage,
              (route) => false,
            );
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
