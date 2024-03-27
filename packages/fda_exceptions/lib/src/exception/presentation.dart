part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class PresentationException extends AppException {
  const PresentationException(super.code, super.message);
}

final class UndefinedPresentationException extends PresentationException {
  const UndefinedPresentationException(String exception)
      : super(staticCode, 'Undefined presentation exception. $exception');

  static const String staticCode = 'undefined_presentation_exception';
}

abstract base class ValidationException extends PresentationException {
  const ValidationException(String message)
      : super(staticCode, 'Validation exception. $message');

  static const String staticCode = 'validation_exception';
}
