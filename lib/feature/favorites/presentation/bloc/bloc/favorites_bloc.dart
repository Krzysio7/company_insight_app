import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:company_insight_app/feature/favorites/domain/failures/favorites_failure.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/get_favorites_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/remove_favorite_use_case.dart';
import 'package:company_insight_app/feature/favorites/domain/use_cases/watch_favorites_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(
    this._getFavoritesUseCase,
    this._removeFavoriteUseCase,
    this._watchFavoritesUseCase,
  ) : super(const FavoritesState.loading()) {
    on<RemoveFromFavorite>(_removeFromFavorite, transformer: droppable());
    on<Initialize>(_initialize, transformer: droppable());
  }

  final GetFavoritesUseCase _getFavoritesUseCase;
  final RemoveFavoriteUseCase _removeFavoriteUseCase;
  final WatchFavoritesUseCase _watchFavoritesUseCase;

  late List<Company> currentFavorites;

  Future<void> _initialize(
    Initialize event,
    Emitter<FavoritesState> emit,
  ) async {
    final result = await _getFavoritesUseCase();

    emit(
      result.fold(FavoritesState.error, (favorites) {
        currentFavorites = favorites;
        return FavoritesState.loaded(currentFavorites);
      }),
    );

    await _watchFavoritesChange(emit);
  }

  Future<void> _removeFromFavorite(
    RemoveFromFavorite event,
    Emitter<FavoritesState> emit,
  ) async {
    final favorite = _findBySymbol(event.symbol);
    final result = await _removeFavoriteUseCase(favorite);

    result.fold(
      (failure) => emit(
        FavoritesState.error(failure),
      ),
      (_) // Do nothing. We'll be notified about changes to the favorites list through a stream.
      // ignore: no-empty-block
      {},
    );

    emit(
      result.fold(
        FavoritesState.error,
        (_) => state,
      ),
    );
  }

  Future<void> _watchFavoritesChange(
    Emitter<FavoritesState> emit,
  ) async {
    await emit.onEach<List<Company>>(
      _watchFavoritesUseCase(),
      onData: (favoritesList) {
        currentFavorites = favoritesList;
        emit(
          FavoritesState.loaded(
            favoritesList,
          ),
        );
      },
    );
  }

  Company _findBySymbol(String symbol) {
    return currentFavorites.firstWhere(
      (element) => element.symbol == symbol,
    );
  }
}
