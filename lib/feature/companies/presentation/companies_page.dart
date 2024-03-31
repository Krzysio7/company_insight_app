import 'package:auto_route/annotations.dart';
import 'package:company_insight_app/core/design_system/companies_list/companies_list.dart';
import 'package:company_insight_app/core/design_system/companies_list/companies_list_view_model.dart';
import 'package:company_insight_app/core/design_system/companies_list/company.dart' as design_system_model;
import 'package:company_insight_app/core/extensions.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:company_insight_app/feature/companies/presentation/bloc/companies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'widgets/search_bar.dart';

@RoutePage()
class CompaniesPage extends StatelessWidget {
  const CompaniesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<CompaniesBloc>(),
      child: SafeArea(
        child: Column(
          children: [
            _SearchBar(),
            Expanded(
              child: _SearchBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchBody extends StatelessWidget {
  void _onFavoriteButtonPressed(BuildContext context, {required design_system_model.Company company}) {
    final companiesBloc = context.read<CompaniesBloc>();
    if (company.isFavorite) {
      companiesBloc.add(RemoveFromFavorite(name: company.name));
    } else {
      companiesBloc.add(AddToFavorite(name: company.name));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompaniesBloc, CompaniesState>(
      builder: (context, state) {
        return switch (state) {
          CompaniesStateInitial() => Center(
              child: Text(
                context.localization.companies_initialText,
              ),
            ),
          CompaniesStateLoading() => const CircularProgressIndicator.adaptive(),
          CompaniesStateLoaded() => state.companies.isEmpty
              ? Center(
                  child: Text(
                    context.localization.companies_noResults,
                  ),
                )
              : CompaniesListViewModel(
                  companies: state.companies
                      .map(
                        (domainCompany) => design_system_model.Company(
                          isFavorite: domainCompany.isFavorite,
                          name: domainCompany.name,
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
                ),
          CompaniesStateError() => Text(
              context.localization.companies_error,
            ),
        };
      },
    );
  }
}
