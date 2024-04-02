import 'package:flutter_test/flutter_test.dart';

/// Usage: I can see engaging instructions about what I should do
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iCanSeeEngagingInstructionsAboutWhatIShouldDo(WidgetTester _) async {
  expect(find.text("Enter the company symbol, e.g \"AAU\""), findsOneWidget);
}
