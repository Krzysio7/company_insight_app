import 'package:auto_route/auto_route.dart';
import 'package:company_insight_app/navigation/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          children: [
            AutoRoute(path: 'companies', page: CompaniesRoute.page),
            AutoRoute(path: 'favorites', page: FavoritesRoute.page),
          ],
        ),
      ];
}
