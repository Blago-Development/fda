import 'dart:async';

import 'package:fda_di/di.dart';
import 'package:fda_exceptions/exceptions.dart';

void assemble() {
  diProvider.registerSingleton<StreamController<AppException>>(
    StreamController<AppException>.broadcast(),
  );
}
