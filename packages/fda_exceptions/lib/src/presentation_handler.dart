import 'dart:async';

import 'package:fda_exceptions/exceptions.dart';
import 'package:fda_logger/logger.dart';

extension FuturePresentationHandlerExtension<T> on Future<T> {
  Future<R?> handle<R>(
    R Function(T value) onSuccess, {
    R? Function(AppException exception)? onError,
    void Function()? whenComplete,
  }) =>
      then<R?>(
        onSuccess,
        onError: (error, stackTrace) {
          final exception = error is AppException
              ? error
              : UndefinedException(error.toString());
          final result = onError?.call(exception);
          _logAndAddExceptionToSink(exception, stackTrace);
          return result;
        },
      ).catchError(
        (error, stackTrace) {
          final exception = error is AppException
              ? error
              : UndefinedPresentationException.message(error.toString());
          _logAndAddExceptionToSink(exception, stackTrace);
          return null;
        },
      ).whenComplete(
        () => whenComplete?.call(),
      );

  void _logAndAddExceptionToSink(
    AppException exception,
    StackTrace stackTrace,
  ) {
    logError(
      exception.toString(),
      error: exception,
      stackTrace: stackTrace,
    );
    exceptionsSink.add(
      ExceptionEvent(exception: exception, stackTrace: stackTrace),
    );
  }
}
