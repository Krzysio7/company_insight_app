import 'package:company_insight_app/feature/favorites/data/dtos/company_hive_dto.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';

abstract class FavoritesLocalDataSource {
  Future<List<CompanyHiveDto>> getFavorites();
  Future<void> addFavorite(Company company);
  Future<void> removeFavorite(Company company);
}
