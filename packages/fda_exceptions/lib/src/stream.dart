import 'dart:async';

import 'package:fda_di/di.dart';
import 'package:fda_exceptions/src/exception_event.dart';

typedef ExceptionEventStream = Stream<ExceptionEvent>;

typedef ExceptionsEventSink = Sink<ExceptionEvent>;

StreamController<ExceptionEvent> get _streamController =>
    di<StreamController<ExceptionEvent>>();

ExceptionEventStream get exceptionsStream => _streamController.stream;

ExceptionsEventSink get exceptionsSink => _streamController.sink;
