// ignore_for_file: no_runtimeType_toString

part 'package:fda_exceptions/src/exception/data.dart';
part 'package:fda_exceptions/src/exception/domain.dart';
part 'package:fda_exceptions/src/exception/presentation.dart';

sealed class AppException implements Exception {
  const AppException(this.code, this.message);

  final String code;
  final String message;

  @override
  String toString() => '$runtimeType - $code - $message';
}

final class UndefinedException extends AppException {
  const UndefinedException(String exception)
      : super(staticCode, 'Undefined exception. $exception');

  static const String staticCode = 'undefined_exception';
}
