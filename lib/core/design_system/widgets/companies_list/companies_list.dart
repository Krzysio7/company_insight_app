import 'package:company_insight_app/core/design_system/widgets/companies_list/companies_list_view_model.dart';
import 'package:company_insight_app/core/design_system/widgets/companies_list/company.dart';
import 'package:company_insight_app/core/design_system/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class CompaniesList extends StatelessWidget {
  const CompaniesList({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = CompaniesListViewModel.of(context);

    return ListView.builder(
      itemCount: viewModel.companies.length,
      itemBuilder: (context, index) {
        return _CompanyItem(company: viewModel.companies[index]);
      },
    );
  }
}

class _CompanyItem extends StatelessWidget {
  const _CompanyItem({
    required this.company,
  });

  final Company company;

  @override
  Widget build(BuildContext context) {
    final viewModel = CompaniesListViewModel.of(context);

    return ListTile(
      leading: Text(company.symbol),
      title: Text(company.name),
      trailing: FavoriteButton(
        isFavorite: company.isFavorite,
        onPressed: () => viewModel.onFavoriteButtonPressed(
          company,
        ),
      ),
      onTap: () => viewModel.onCompanyPressed(
        company.symbol,
      ),
    );
  }
}
