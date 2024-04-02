import 'package:company_insight_app/di/injection.dart';
import 'package:company_insight_app/feature/favorites/domain/failures/favorites_failure.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/add_favorite_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/get_favorites_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/remove_favorite_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/watch_favorites_use_case.dart';
import 'package:fpdart/fpdart.dart';

class FavoritesApi {
  final WatchFavoritesUseCase _watchFavoritesUseCase = inject();
  final AddFavoriteUseCase _addFavoriteUseCase = inject();
  final RemoveFavoriteUseCase _removeFavoriteUseCase = inject();
  final GetFavoritesUseCase _getFavoritesUseCase = inject();

  Stream<List<Company>> watchFavorites() {
    return _watchFavoritesUseCase();
  }

  Future<Either<FavoritesFailure, List<Company>>> getAll() {
    return _getFavoritesUseCase();
  }

  Future<Either<FavoritesFailure, void>> addFavorite(Company company) {
    return _addFavoriteUseCase(company);
  }

  Future<Either<FavoritesFailure, void>> removeFavorite(Company company) {
    return _removeFavoriteUseCase(company);
  }
}
