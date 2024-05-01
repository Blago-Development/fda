part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class DataException extends AppException {
  const DataException(super.code, super.message);
}

base class NotInitializedException extends DataException {
  const NotInitializedException()
      : super(
          defaultCode,
          'Not initialized exception. Some dependency has not yet initialized.',
        );

  const NotInitializedException.message(String message)
      : super(defaultCode, 'Not initialized exception. $message');

  const NotInitializedException.custom(super.code, super.message);

  static const String defaultCode = 'not-initialized';
}

base class InternetConnectivityException extends DataException {
  const InternetConnectivityException()
      : super(defaultCode, 'Internet connectivity exception.');

  const InternetConnectivityException.message(String message)
      : super(defaultCode, 'Internet connectivity exception. $message');

  const InternetConnectivityException.custom(super.code, super.message);

  static const String defaultCode = 'internet-connectivity-exception';
}

base class ClientConnectivityException extends DataException {
  const ClientConnectivityException()
      : super(
          defaultCode,
          'Client connectivity exception. The client could not be reached.',
        );

  const ClientConnectivityException.message(String message)
      : super(defaultCode, 'Client connectivity exception. $message');

  const ClientConnectivityException.custom(super.code, super.message);

  static const String defaultCode = 'client-connectivity-exception';
}

base class BadRequestException extends DataException {
  const BadRequestException() : super(defaultCode, 'Bad data request.');

  const BadRequestException.message(String message)
      : super(defaultCode, 'Bad data request. $message');

  const BadRequestException.custom(super.code, super.message);

  static const String defaultCode = 'bad-data-request';
}

base class UnauthorizedException extends DataException {
  const UnauthorizedException() : super(defaultCode, 'Unauthorized exception.');

  const UnauthorizedException.message(String message)
      : super(defaultCode, 'Unauthorized exception. $message');

  const UnauthorizedException.custom(super.code, super.message);

  static const String defaultCode = 'unauthorized-exception';
}

base class NoAccessException extends DataException {
  const NoAccessException() : super(defaultCode, 'No access exception.');

  const NoAccessException.message(String message)
      : super(defaultCode, 'No access exception. $message');

  const NoAccessException.custom(super.code, super.message);

  static const String defaultCode = 'no-access-exception';
}

base class NoDataFoundException extends DataException {
  const NoDataFoundException()
      : super(
          defaultCode,
          'No data found exception. Some data not found.',
        );

  const NoDataFoundException.message(String message)
      : super(defaultCode, 'No data found exception. $message');

  const NoDataFoundException.custom(super.code, super.message);

  static const String defaultCode = 'no-data-found';
}

base class ClientInternalException extends DataException {
  const ClientInternalException()
      : super(defaultCode, 'Client internal exception.');

  const ClientInternalException.message(String message)
      : super(defaultCode, 'Client internal exception. $message');

  const ClientInternalException.custom(super.code, super.message);

  static const String defaultCode = 'client-internal-exception';
}
