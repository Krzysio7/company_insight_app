import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I have entered an invalid or nonexistent company symbol
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iHaveEnteredAnInvalidOrNonexistentCompanySymbol(WidgetTester tester) async {
  final textInput = find.ancestor(
    of: find.text("Enter the company symbol, e.g \"AAU\""),
    matching: find.byType(
      TextField,
    ),
  );
  await tester.enterText(textInput, 'NON EXISTING SYMBOL');
  await tester.pumpAndSettle(
    const Duration(
      seconds: 4,
    ),
  );
}
