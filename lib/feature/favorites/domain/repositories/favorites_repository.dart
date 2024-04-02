import 'package:company_insight_app/feature/favorites/domain/failures/favorites_failure.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:fpdart/fpdart.dart';

abstract class FavoritesRepository {
  Future<Either<FavoritesFailure, List<Company>>> getFavorites();
  Stream<List<Company>> watchFavorites();
  Future<Either<FavoritesFailure, void>> removeFavorite(Company company);
  Future<Either<FavoritesFailure, void>> addFavorite(Company company);
}
