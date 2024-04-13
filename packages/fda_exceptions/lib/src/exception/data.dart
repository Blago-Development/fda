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

final class InternetConnectivityException extends DataException {
  const InternetConnectivityException()
      : super(staticCode, 'Internet connectivity exception.');

  static const String staticCode = 'internet_connectivity_exception';
}

base class BadRequestException extends DataException {
  const BadRequestException(String message)
      : super(specificCode, 'Bad data request. $message');

  const BadRequestException.withCode(String code, String message)
      : super(specificCode, 'Bad data request. Code: $code. $message');

  static const String specificCode = 'bad_data_request';
}

base class UnauthorizedException extends DataException {
  const UnauthorizedException() : super(staticCode, 'Unauthorized exception.');

  const UnauthorizedException.typed(Type type)
      : super(staticCode, 'Unauthorized exception for $type.');

  const UnauthorizedException.detailed({
    required Type type,
    required String message,
  }) : super(staticCode, 'Unauthorized exception for $type. $message');

  static const String staticCode = 'unauthorized_exception';
}

base class NoDataFoundException extends DataException {
  const NoDataFoundException() : super(staticCode, 'Some data not found.');

  const NoDataFoundException.typed(Type type)
      : super(staticCode, '$type not found.');

  const NoDataFoundException.withId(Type type, String id)
      : super(staticCode, '$type with $id id not found.');

  static const String staticCode = 'no_data_found';
}

base class ClientInternalException extends DataException {
  const ClientInternalException()
      : super(staticCode, 'Client internal exception.');

  const ClientInternalException.typed(Type type)
      : super(staticCode, 'Client internal exception for $type.');

  const ClientInternalException.detailed({
    required Type type,
    required String message,
  }) : super(staticCode, 'Client internal exception for $type. $message');

  static const String staticCode = 'client_internal_exception';
}
