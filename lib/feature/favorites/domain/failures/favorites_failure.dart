import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_failure.freezed.dart';

@freezed
class FavoritesFailure with _$FavoritesFailure {
  const factory FavoritesFailure.defaultError({Object? error}) = DefaultError;
  const factory FavoritesFailure.noInternet({Object? error}) = NoInternet;
}
