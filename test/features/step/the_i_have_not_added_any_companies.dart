import 'package:company_insight_app/di/injection.dart';
import 'package:company_insight_app/feature/favorites/api/favorites_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

/// Usage: the I have not added any companies
// Doesn't apply here.
// ignore_for_file: avoid-redundant-async, avoid-top-level-members-in-tests
Future<void> theIHaveNotAddedAnyCompanies(WidgetTester _) async {
  getIt
    ..pushNewScope()
    ..registerFactory<FavoritesApi>(FavoritesApiMock.new);

  final FavoritesApi favoritesApi = inject();

  when(favoritesApi.getAll).thenAnswer((_) async => right([]));
}
