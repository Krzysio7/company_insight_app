part of 'companies_bloc.dart';

@freezed
sealed class CompaniesState with _$CompaniesState {
  const factory CompaniesState.initial() = CompaniesStateInitial;
  const factory CompaniesState.loading() = CompaniesStateLoading;
  const factory CompaniesState.loaded(List<Company> companies) = CompaniesStateLoaded;
  const factory CompaniesState.error(CompaniesFailure failure) = CompaniesStateError;
}
