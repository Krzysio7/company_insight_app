import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I am presented with a preview of the company
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iAmPresentedWithAPreviewOfTheCompany(WidgetTester _, String symbol) async {
  expect(
    find.ancestor(
      of: find.textContaining(symbol),
      matching: find.byType(ListTile),
    ),
    findsAny,
  );
}
