part of 'package:fda_exceptions/src/exception/exception.dart';

abstract base class DataException extends AppException {
  const DataException(super.code, super.message);
}

base class NotInitializedException extends DataException {
  const NotInitializedException()
      : super(
          staticCode,
          'Not initialized exception. Some dependency has not yet initialized.',
        );

  const NotInitializedException.custom(String message)
      : super(staticCode, 'Not initialized exception. $message');

  static const String staticCode = 'not-initialized';
}

base class InternetConnectivityException extends DataException {
  const InternetConnectivityException()
      : super(staticCode, 'Internet connectivity exception.');

  const InternetConnectivityException.custom(String message)
      : super(staticCode, 'Internet connectivity exception. $message');

  static const String staticCode = 'internet-connectivity-exception';
}

base class ClientConnectivityException extends DataException {
  const ClientConnectivityException()
      : super(
          staticCode,
          'Client connectivity exception. The client could not be reached.',
        );

  const ClientConnectivityException.custom(String message)
      : super(staticCode, 'Client connectivity exception. $message');

  static const String staticCode = 'client-connectivity-exception';
}

base class BadRequestException extends DataException {
  const BadRequestException() : super(specificCode, 'Bad data request.');

  const BadRequestException.custom(String message)
      : super(specificCode, 'Bad data request. $message');

  static const String specificCode = 'bad-data-request';
}

base class UnauthorizedException extends DataException {
  const UnauthorizedException() : super(staticCode, 'Unauthorized exception.');

  const UnauthorizedException.custom(String message)
      : super(staticCode, 'Unauthorized exception. $message');

  static const String staticCode = 'unauthorized-exception';
}

base class NoAccessException extends DataException {
  const NoAccessException() : super(staticCode, 'No access exception.');

  const NoAccessException.custom(String message)
      : super(staticCode, 'No access exception. $message');

  static const String staticCode = 'no-access-exception';
}

base class NoDataFoundException extends DataException {
  const NoDataFoundException()
      : super(
          staticCode,
          'No data found exception. Some data not found.',
        );

  const NoDataFoundException.custom(String message)
      : super(staticCode, 'No data found exception. $message');

  static const String staticCode = 'no-data-found';
}

base class ClientInternalException extends DataException {
  const ClientInternalException()
      : super(staticCode, 'Client internal exception.');

  const ClientInternalException.custom(String message)
      : super(staticCode, 'Client internal exception. $message');

  static const String staticCode = 'client-internal-exception';
}
