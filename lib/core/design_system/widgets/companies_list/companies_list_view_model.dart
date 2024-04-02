import 'package:company_insight_app/core/design_system/widgets/companies_list/company.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CompaniesListViewModel extends InheritedWidget {
  const CompaniesListViewModel({
    required this.companies,
    required this.onCompanyPressed,
    required this.onFavoriteButtonPressed,
    required super.child,
    super.key,
  });

  final List<Company> companies;
  final ValueChanged<String> onCompanyPressed;
  final ValueChanged<Company> onFavoriteButtonPressed;

  static CompaniesListViewModel? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CompaniesListViewModel>();
  }

  static CompaniesListViewModel of(BuildContext context) {
    // This is InheritedWidget so it doesn't apply here.
    // ignore: avoid-returning-widgets
    final result = maybeOf(context);
    assert(result != null, 'No _CompaniesListViewModel found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CompaniesListViewModel oldWidget) =>
      !const DeepCollectionEquality().equals(oldWidget.companies, companies) ||
      onCompanyPressed != oldWidget.onCompanyPressed ||
      onFavoriteButtonPressed != oldWidget.onFavoriteButtonPressed;
}
