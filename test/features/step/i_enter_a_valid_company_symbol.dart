// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I enter a valid company symbol
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iEnterAValidCompanySymbol(WidgetTester tester, String symbol) async {
  final textInput = find.ancestor(
    of: find.text("Enter the company symbol, e.g \"AAU\""),
    matching: find.byType(
      TextField,
    ),
  );
  await tester.enterText(textInput, symbol);
  await tester.pumpAndSettle(
    Duration(
      seconds: 4,
    ),
  );
}
