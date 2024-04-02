import 'package:auto_route/annotations.dart';
import 'package:company_insight_app/core/design_system/common/styles/dimens.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/companies_list.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/companies_list_view_model.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/company.dart' as design_system_model;
import 'package:company_insight_app/core/extensions.dart';
import 'package:company_insight_app/di/injection.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
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
      create: (_) => inject<CompaniesBloc>()
        ..add(
          const CompaniesEvent.init(),
        ),
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
  static const _stateSwitchTimeMilliseconds = 500;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompaniesBloc, CompaniesState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(
            milliseconds: _stateSwitchTimeMilliseconds,
          ),
          child: switch (state) {
            CompaniesStateInitial() => const Center(
                child: _WelcomeInfo(),
              ),
            CompaniesStateLoading() => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            CompaniesStateLoaded() => state.companies.isEmpty
                ? const Center(
                    child: _EmptyListInfo(),
                  )
                : _CompaniesList(
                    companies: state.companies,
                  ),
            CompaniesStateError() => const _ErrorInfo(),
          },
        );
      },
    );
  }
}

class _WelcomeInfo extends StatelessWidget {
  const _WelcomeInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        Dimens.defaultPadding,
      ),
      child: Text(
        context.localization.companies_initialText,
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
        context.localization.companies_noResults,
      ),
    );
  }
}

class _CompaniesList extends StatelessWidget {
  const _CompaniesList({required this.companies});

  final List<Company> companies;

  void _onFavoriteButtonPressed(BuildContext context, {required design_system_model.Company company}) {
    final companiesBloc = context.read<CompaniesBloc>();
    if (company.isFavorite) {
      companiesBloc.add(RemoveFromFavorite(symbol: company.symbol));
    } else {
      companiesBloc.add(AddToFavorite(symbol: company.symbol));
    }
  }

  @override
  Widget build(BuildContext context) {
    return CompaniesListViewModel(
      companies: companies
          .map(
            (domainCompany) => design_system_model.Company(
              isFavorite: domainCompany.isFavorite,
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

class _ErrorInfo extends StatelessWidget {
  const _ErrorInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.localization.companies_error,
        ),
        TextButton(
          onPressed: () => context.read<CompaniesBloc>().retry(),
          child: Text(
            context.localization.companies_retry,
          ),
        ),
      ],
    );
  }
}
