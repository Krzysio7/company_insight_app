import 'package:company_insight_app/app.dart';
import 'package:company_insight_app/core/app_bloc_observer.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
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

  await Hive.initFlutter();

  if (kDebugMode) {
    Bloc.observer = const AppBlocObserver();
  }

  configureInjection();
  runApp(App());
}
