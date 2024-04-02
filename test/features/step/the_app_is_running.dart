import 'package:company_insight_app/app.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Doesn't apply here.
// ignore: avoid-top-level-members-in-tests
Future<void> theAppIsRunning(WidgetTester tester) async {
  await Hive.initFlutter();
  await getIt.resetScope();
  configureInjection();

  await tester.pumpWidget(App());
  await tester.pumpAndSettle();
}
