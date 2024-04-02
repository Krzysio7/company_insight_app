import 'dart:async';

import 'package:company_insight_app/feature/favorites/data/data_sources/favorites_local_data_source.dart';
import 'package:company_insight_app/feature/favorites/data/dtos/company_hive_dto.dart';
import 'package:company_insight_app/feature/favorites/domain/failures/favorites_failure.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/domain/repositories/favorites_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FavoritesRepository)
class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl(this._favoritesLocalDataSource);

  final FavoritesLocalDataSource _favoritesLocalDataSource;

  final StreamController<List<Company>> _favoritesListStreamController = StreamController.broadcast();

  @override
  Future<Either<FavoritesFailure, void>> addFavorite(Company company) async {
    try {
      final addResult = await _favoritesLocalDataSource.addFavorite(company);
      await _getAllAndPassToStream();

      return right(addResult);
    } on Exception catch (exception) {
      return left(FavoritesFailure.defaultError(error: exception));
    }
  }

  @override
  Future<Either<FavoritesFailure, List<Company>>> getFavorites() async {
    try {
      final result = await _favoritesLocalDataSource.getFavorites();
      return right(result.models);
    } on Exception catch (exception) {
      return left(FavoritesFailure.defaultError(error: exception));
    }
  }

  @override
  Future<Either<FavoritesFailure, void>> removeFavorite(Company company) async {
    try {
      final removalResult = await _favoritesLocalDataSource.removeFavorite(company);
      await _getAllAndPassToStream();

      return right(removalResult);
    } on Exception catch (exception) {
      return left(FavoritesFailure.defaultError(error: exception));
    }
  }

  @override
  Stream<List<Company>> watchFavorites() {
    return _favoritesListStreamController.stream;
  }

  Future<void> _getAllAndPassToStream() async {
    final allFavorites = await _favoritesLocalDataSource.getFavorites();
    _favoritesListStreamController.add(allFavorites.models);
  }
}
