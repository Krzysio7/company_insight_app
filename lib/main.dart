import 'package:company_insight_app/app.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  PlatformDispatcher.instance.onError = (error, stack) {
    //log to Crashlytics or sth.

    return kReleaseMode;
  };
  FlutterError.onError = (details) {
    if (!kReleaseMode) {
      FlutterError.presentError(details);
    }
    //log to Crashlytics or sth.
  };

  configureInjection();
  runApp(App());
}
