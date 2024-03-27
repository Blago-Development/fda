import 'dart:async';

const _debounceDuration = Duration(milliseconds: 1500);

class Debouncer {
  Debouncer({Duration? duration}) : _duration = duration ?? _debounceDuration;

  final Duration _duration;
  Timer? _timer;

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(_duration, callback);
  }

  void dispose() => _timer?.cancel();
}
