import 'package:auto_route/auto_route.dart';
import 'package:company_insight_app/core/design_system/common/styles/dimens.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/companies_list.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/companies_list_view_model.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/company.dart' as design_system_model;
import 'package:company_insight_app/core/extensions.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/presentation/bloc/bloc/favorites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  static const _stateSwitchTimeMilliseconds = 500;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<FavoritesBloc>()
        ..add(
          const FavoritesEvent.init(),
        ),
      child: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return SafeArea(
            child: AnimatedSwitcher(
              duration: const Duration(
                milliseconds: _stateSwitchTimeMilliseconds,
              ),
              child: switch (state) {
                FavoritesStateLoading() => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                FavoritesStateLoaded() => state.companies.isEmpty
                    ? const Center(
                        child: _EmptyListInfo(),
                      )
                    : _CompaniesList(
                        companies: state.companies,
                      ),
                FavoritesStateError() => Center(
                    child: Text(
                      context.localization.favorites_error,
                    ),
                  ),
              },
            ),
          );
        },
      ),
    );
  }
}

class _EmptyListInfo extends StatelessWidget {
  const _EmptyListInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Dimens.defaultPadding,
      ),
      child: Text(
        context.localization.favorites_emptyList,
      ),
    );
  }
}

class _CompaniesList extends StatelessWidget {
  const _CompaniesList({required this.companies});

  final List<Company> companies;

  void _onFavoriteButtonPressed(BuildContext context, {required design_system_model.Company company}) {
    context.read<FavoritesBloc>().add(RemoveFromFavorite(symbol: company.symbol));
  }

  @override
  Widget build(BuildContext context) {
    return CompaniesListViewModel(
      companies: companies
          .map(
            (domainCompany) => design_system_model.Company(
              isFavorite: true,
              name: domainCompany.name ?? context.localization.companies_noName,
              symbol: domainCompany.symbol,
            ),
          )
          .toList(
            growable: false,
          ),
      onFavoriteButtonPressed: (company) => _onFavoriteButtonPressed(
        context,
        company: company,
      ),
      onCompanyPressed: (value) {
        // TODO(ks): Implement.
      },
      child: const CompaniesList(),
    );
  }
}
