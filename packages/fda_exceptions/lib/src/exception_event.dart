import 'package:fda_exceptions/exceptions.dart';

final class ExceptionEvent {
  const ExceptionEvent({
    required this.exception,
    required this.stackTrace,
  });

  final AppException exception;
  final StackTrace stackTrace;
}
