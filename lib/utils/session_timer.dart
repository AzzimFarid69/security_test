import 'dart:async';

import 'package:quiver/async.dart';

class SessionTimer {
  static StreamSubscription sub;
  static CountdownTimer _sessionTimer;
  static int _sessionPeriod = 299;

  static start(int seconds) {
    _sessionPeriod = seconds;
    if (_sessionTimer == null) {
      _sessionTimer = CountdownTimer(Duration(seconds: _sessionPeriod), Duration(seconds: 1));
      sub = _sessionTimer.listen(null);
      sub.onDone(() {
        //Do something
        print('TEST :::: timer is done');
      });
    }
    return _sessionTimer;
  }

  static stop() {
    if (_sessionTimer != null) {
      _sessionTimer.cancel();
      _sessionTimer = null;
      sub = null;
    }
  }

  static restart(int seconds) {
    stop();
    start(seconds);
  }

  static forceRestart() {
    restart(_sessionPeriod);
  }

  static bool isRunning() {
    return _sessionTimer != null;
  }
}
