part of 'favorites_bloc.dart';

@freezed
sealed class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = FavoritesStateLoading;
  const factory FavoritesState.loaded(List<Company> companies) = FavoritesStateLoaded;
  const factory FavoritesState.error(FavoritesFailure failure) = FavoritesStateError;
}
