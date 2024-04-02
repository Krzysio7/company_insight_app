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
    as _i13;
import '../feature/companies/data/data_sources/companies_remote_data_source_impl.dart'
    as _i14;
import '../feature/companies/data/repositories/companies_repository_impl.dart'
    as _i16;
import '../feature/companies/domain/repositories/companies_repository.dart'
    as _i15;
import '../feature/companies/domain/use_cases/get_companies_list_from_query_use_case.dart'
    as _i18;
import '../feature/companies/presentation/bloc/companies_bloc.dart' as _i19;
import '../feature/favorites/api/favorites_api.dart' as _i4;
import '../feature/favorites/data/data_sources/favorites_local_data_source.dart'
    as _i5;
import '../feature/favorites/data/data_sources/favorites_local_data_source_impl.dart'
    as _i6;
import '../feature/favorites/data/repositories/favorites_repository_impl.dart'
    as _i8;
import '../feature/favorites/domain/repositories/favorites_repository.dart'
    as _i7;
import '../feature/favorites/domain/use_cases/add_favorite_use_case.dart'
    as _i12;
import '../feature/favorites/domain/use_cases/get_favorites_use_case.dart'
    as _i9;
import '../feature/favorites/domain/use_cases/remove_favorite_use_case.dart'
    as _i10;
import '../feature/favorites/domain/use_cases/watch_favorites_use_case.dart'
    as _i11;
import '../feature/favorites/presentation/bloc/bloc/favorites_bloc.dart'
    as _i17;
import 'modules/api_module.dart' as _i20;
import 'modules/third_party_module.dart' as _i21;

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
  final thirdPartyModule = _$ThirdPartyModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dio());
  gh.factory<_i4.FavoritesApi>(() => thirdPartyModule.favorites);
  gh.factory<_i5.FavoritesLocalDataSource>(
      () => _i6.FavoritesLocalDataSourceImpl());
  gh.lazySingleton<_i7.FavoritesRepository>(
      () => _i8.FavoritesRepositoryImpl(gh<_i5.FavoritesLocalDataSource>()));
  gh.factory<_i9.GetFavoritesUseCase>(
      () => _i9.GetFavoritesUseCase(gh<_i7.FavoritesRepository>()));
  gh.factory<_i10.RemoveFavoriteUseCase>(
      () => _i10.RemoveFavoriteUseCase(gh<_i7.FavoritesRepository>()));
  gh.factory<_i11.WatchFavoritesUseCase>(
      () => _i11.WatchFavoritesUseCase(gh<_i7.FavoritesRepository>()));
  gh.factory<_i12.AddFavoriteUseCase>(
      () => _i12.AddFavoriteUseCase(gh<_i7.FavoritesRepository>()));
  gh.factory<_i13.CompaniesRemoteDataSource>(
      () => _i14.CompaniesRemoteDataSourceImpl(gh<_i3.Dio>()));
  gh.factory<_i15.CompaniesRepository>(
      () => _i16.CompaniesRepositoryImpl(gh<_i13.CompaniesRemoteDataSource>()));
  gh.factory<_i17.FavoritesBloc>(() => _i17.FavoritesBloc(
        gh<_i9.GetFavoritesUseCase>(),
        gh<_i10.RemoveFavoriteUseCase>(),
        gh<_i11.WatchFavoritesUseCase>(),
      ));
  gh.factory<_i18.GetCompaniesListFromQueryUseCase>(() =>
      _i18.GetCompaniesListFromQueryUseCase(gh<_i15.CompaniesRepository>()));
  gh.factory<_i19.CompaniesBloc>(() => _i19.CompaniesBloc(
        gh<_i18.GetCompaniesListFromQueryUseCase>(),
        gh<_i4.FavoritesApi>(),
      ));
  return getIt;
}

class _$ApiModule extends _i20.ApiModule {}

class _$ThirdPartyModule extends _i21.ThirdPartyModule {}
