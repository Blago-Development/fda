part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class DomainException extends AppException {
  const DomainException(super.code, super.message);
}
