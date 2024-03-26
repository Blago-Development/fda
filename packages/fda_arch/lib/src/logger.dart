import 'package:fda_di/di.dart';
import 'package:logger/logger.dart';

void logError(String message, {Object? error, StackTrace? stackTrace}) =>
    di<Logger>().e(message, error: error, stackTrace: stackTrace);

void logWarning(String message, {Object? warning, StackTrace? stackTrace}) =>
    di<Logger>().w(message, error: warning, stackTrace: stackTrace);

void logInfo(String message, {Object? error}) =>
    di<Logger>().i(message, error: error);
