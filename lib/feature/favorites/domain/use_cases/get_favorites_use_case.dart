import 'package:company_insight_app/feature/favorites/domain/failures/favorites_failure.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/domain/repositories/favorites_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFavoritesUseCase {
  const GetFavoritesUseCase(this._repository);

  final FavoritesRepository _repository;

  Future<Either<FavoritesFailure, List<Company>>> call() => _repository.getFavorites();
}
