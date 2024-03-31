// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/companies/data/data_sources/companies_remote_data_source.dart'
    as _i4;
import '../feature/companies/data/data_sources/companies_remote_data_source_impl.dart'
    as _i5;
import '../feature/companies/data/repositories/companies_repository_impl.dart'
    as _i7;
import '../feature/companies/domain/repository/companies_repository.dart'
    as _i6;
import '../feature/companies/presentation/bloc/companies_bloc.dart' as _i9;
import '../feature/companies/presentation/use_cases/get_companies_list_from_query_use_case.dart'
    as _i8;
import 'modules/api_module.dart' as _i10;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dio());
  gh.factory<_i4.CompaniesRemoteDataSource>(
      () => _i5.CompaniesRemoteDataSourceImpl(gh<_i3.Dio>()));
  gh.factory<_i6.CompaniesRepository>(
      () => _i7.CompaniesRepositoryImpl(gh<_i4.CompaniesRemoteDataSource>()));
  gh.factory<_i8.GetCompaniesListFromQueryUseCase>(() =>
      _i8.GetCompaniesListFromQueryUseCase(gh<_i6.CompaniesRepository>()));
  gh.factory<_i9.CompaniesBloc>(
      () => _i9.CompaniesBloc(gh<_i8.GetCompaniesListFromQueryUseCase>()));
  return getIt;
}

class _$ApiModule extends _i10.ApiModule {}
