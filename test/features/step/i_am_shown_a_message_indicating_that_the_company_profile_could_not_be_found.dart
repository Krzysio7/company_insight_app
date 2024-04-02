import 'package:flutter_test/flutter_test.dart';

/// Usage: I am shown a message indicating that the company profile could not be found
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iAmShownAMessageIndicatingThatTheCompanyProfileCouldNotBeFound(WidgetTester _) async {
  expect(find.text('No Results'), findsOneWidget);
  ;
}
