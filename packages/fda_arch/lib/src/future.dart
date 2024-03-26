import 'dart:async';

import 'package:fda_arch/src/logger.dart';

extension FutureExtension<T, R> on Future<T> {
  Future<R?> handle(
    R Function(T value) onSuccess, {
    R? Function(String message)? onError,
    void Function()? whenComplete,
  }) {
    return then<R?>(
      onSuccess,
      onError: (error, stackTrace) {
        final result = onError?.call(error.toString());
        logError(error.toString(), error: error, stackTrace: stackTrace);
        return result;
      },
    ).catchError(
      (error, stackTrace) {
        logError(error.toString(), error: error, stackTrace: stackTrace);
        return null;
      },
    ).whenComplete(() => whenComplete?.call());
  }
}
