part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class PresentationException extends AppException {
  const PresentationException(super.code, super.message);
}

final class UndefinedPresentationException extends PresentationException {
  const UndefinedPresentationException()
      : super(defaultCode, 'Undefined presentation exception.');

  const UndefinedPresentationException.message(String message)
      : super(defaultCode, 'Undefined presentation exception. $message');

  const UndefinedPresentationException.custom(super.code, super.message);

  static const String defaultCode = 'undefined-presentation-exception';
}

abstract base class ValidationException extends PresentationException {
  const ValidationException() : super(defaultCode, 'Validation exception.');

  const ValidationException.message(String message)
      : super(defaultCode, 'Validation exception. $message');

  const ValidationException.custom(super.code, super.message);

  static const String defaultCode = 'validation-exception';
}
