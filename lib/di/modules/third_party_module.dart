import 'package:company_insight_app/feature/favorites/api/favorites_api.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModule {
  @injectable
  FavoritesApi get favorites => FavoritesApi();
}
