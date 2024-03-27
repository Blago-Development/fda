part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class DataException extends AppException {
  const DataException(super.code, super.message);
}

base class NotInitializedException extends DataException {
  const NotInitializedException()
      : super(staticCode, 'Some dependency has not yet initialized.');

  const NotInitializedException.typed(Type type)
      : super(staticCode, '$type is not yet initialized.');

  static const String staticCode = 'not_initialized';
}

base class NoDataFoundException extends DataException {
  const NoDataFoundException() : super(staticCode, 'Some data not found.');

  const NoDataFoundException.typed(Type type)
      : super(staticCode, '$type not found.');

  const NoDataFoundException.withId(Type type, String id)
      : super(staticCode, '$type with $id id not found.');

  static const String staticCode = 'no_data_found';
}

base class BadRequestException extends DataException {
  const BadRequestException(String message)
      : super(specificCode, 'Bad data request. $message');

  const BadRequestException.withCode(String code, String message)
      : super(specificCode, 'Bad data request. Code: $code. $message');

  static const String specificCode = 'bad_data_request';
}
