import 'package:auto_route/auto_route.dart';
import 'package:company_insight_app/core/extensions.dart';
import 'package:company_insight_app/navigation/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CompaniesRoute(),
        FavoritesRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: context.localization.home_tabCompanies,
              icon: const Icon(
                Icons.business,
              ),
            ),
            BottomNavigationBarItem(
              label: context.localization.home_tabFavorites,
              icon: const Icon(
                Icons.star,
              ),
            ),
          ],
        );
      },
    );
  }
}
