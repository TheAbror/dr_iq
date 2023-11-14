import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    (data) {
      debugPrint('${data.level.name} ${data.time} ${data.message} ');
    },
  );
}
