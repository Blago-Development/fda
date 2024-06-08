part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class DomainException extends AppException {
  const DomainException(super.code, super.message);
}

base class UnexpectedBehaviourException extends DomainException {
  const UnexpectedBehaviourException()
      : super(defaultCode, 'Unexpected behaviour exception');

  const UnexpectedBehaviourException.message(String message)
      : super(defaultCode, 'Unexpected behaviour exception. $message');

  const UnexpectedBehaviourException.custom(super.code, super.message);

  static const String defaultCode = 'unexpected-behaviour';
}
