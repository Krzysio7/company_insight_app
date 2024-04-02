part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.init() = Initialize;
  const factory FavoritesEvent.removeFromFavorite({required String symbol}) = RemoveFromFavorite;
}
