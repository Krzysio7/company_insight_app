import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I can choose to add the company to my list
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> iCanChooseToAddTheCompanyToMyList(WidgetTester tester, String _) async {
  final icon = find.descendant(
    of: find.byType(ListTile).first,
    matching: find.byIcon(Icons.star_outline),
  );

  await tester.tap(icon);
  await tester.pumpAndSettle();
}
