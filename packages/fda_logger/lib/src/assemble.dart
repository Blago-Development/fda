import 'package:fda_di/di.dart';
import 'package:logger/logger.dart';

void assemble() => diProvider.registerSingleton(Logger.new);
