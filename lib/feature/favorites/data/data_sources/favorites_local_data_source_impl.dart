import 'package:company_insight_app/core/hive/hive_box_facade.dart';
import 'package:company_insight_app/feature/favorites/data/data_sources/favorites_local_data_source.dart';
import 'package:company_insight_app/feature/favorites/data/dtos/company_hive_dto.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavoritesLocalDataSource)
class FavoritesLocalDataSourceImpl implements FavoritesLocalDataSource {
  FavoritesLocalDataSourceImpl()
      : facade = HiveBoxFacade<CompanyHiveDto>(
          boxName: _boxName,
        )..registerAdapter(CompanyTypeAdapter());

  static const _boxName = 'favoriteCompaniesBox';

  final HiveBoxFacade<CompanyHiveDto> facade;

  @override
  Future<void> addFavorite(Company company) => facade.put(
        company.symbol,
        company.dto,
      );

  @override
  Future<void> removeFavorite(Company company) => facade.delete(
        company.symbol,
      );

  @override
  Future<List<CompanyHiveDto>> getFavorites() => facade.getAll();
}
