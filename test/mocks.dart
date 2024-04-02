import 'package:company_insight_app/feature/favorites/api/favorites_api.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/add_favorite_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/get_favorites_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/remove_favorite_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/watch_favorites_use_case.dart';
import 'package:mocktail/mocktail.dart';

// Doesn't apply here.
// ignore_for_file: avoid-top-level-members-in-tests
class FavoritesApiMock extends Mock implements FavoritesApi {}

class WatchFavoritesUseCaseMock extends Mock implements WatchFavoritesUseCase {}

class RemoveFavoriteUseCaseMock extends Mock implements RemoveFavoriteUseCase {}

class GetFavoritesUseCaseMock extends Mock implements GetFavoritesUseCase {}

class AddFavoriteUseCaseMock extends Mock implements AddFavoriteUseCase {}
