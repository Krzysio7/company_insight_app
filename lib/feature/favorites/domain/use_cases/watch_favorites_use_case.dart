import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/domain/repositories/favorites_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class WatchFavoritesUseCase {
  const WatchFavoritesUseCase(this._repository);

  final FavoritesRepository _repository;

  Stream<List<Company>> call() => _repository.watchFavorites();
}
