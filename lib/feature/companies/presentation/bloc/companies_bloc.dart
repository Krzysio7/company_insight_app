import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:company_insight_app/feature/companies/domain/failures/companies_failure.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:company_insight_app/feature/companies/domain/use_cases/get_companies_list_from_query_use_case.dart';
import 'package:company_insight_app/feature/favorites/api/favorites_api.dart';
import 'package:company_insight_app/feature/favorites/domain/models/company.dart' as favorites_model;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'companies_bloc.freezed.dart';
part 'companies_event.dart';
part 'companies_state.dart';

const _duration = Duration(milliseconds: 700);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

@injectable
class CompaniesBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompaniesBloc(
    this._getCompaniesUseCase,
    this._favoritesApi,
  ) : super(const CompaniesState.initial()) {
    on<Initialize>(_initialize);
    on<TextChanged>(_onTextChanged, transformer: debounce(_duration));
    on<AddToFavorite>(_addToFavorite, transformer: droppable());
    on<RemoveFromFavorite>(_removeFromFavorite, transformer: droppable());
  }

  final GetCompaniesListFromQueryUseCase _getCompaniesUseCase;
  final FavoritesApi _favoritesApi;

  late List<Company> currentFavorites;

  List<Company>? _searchResults;
  String? _previousSearchedTerm;
  CompaniesEvent? _previousEvent;

  @override
  void onEvent(CompaniesEvent event) {
    _previousEvent = event;
    super.onEvent(event);
  }

  Future<void> _initialize(
    Initialize _,
    Emitter<CompaniesState> emit,
  ) async {
    final favoritesResult = await _favoritesApi.getAll();

    return favoritesResult.fold(
        (failure) => emit(
              const CompaniesState.error(
                CompaniesFailure.defaultError(),
              ),
            ), (favoritesList) async {
      currentFavorites = _mapToCompaniesDomainList(favoritesList);

      await emit.onEach<List<favorites_model.Company>>(
        _favoritesApi.watchFavorites(),
        onData: (favoritesList) {
          currentFavorites = _mapToCompaniesDomainList(favoritesList);

          if (_searchResults != null) {
            emit(
              CompaniesState.loaded(
                _matchSearchResultsWithFavorites(
                  searchResults: _searchResults!,
                  favorites: currentFavorites,
                ),
              ),
            );
          }
        },
      );
    });
  }

  List<Company> _matchSearchResultsWithFavorites({
    required List<Company> searchResults,
    required List<Company> favorites,
  }) {
    var searchResultsWithFavorites = searchResults
        .map(
          (company) => company.copyWith(
            isFavorite: false,
          ),
        )
        .toList(
          growable: false,
        );

    for (final favorite in favorites) {
      searchResultsWithFavorites = searchResultsWithFavorites.addFavorite(favorite);
    }

    return searchResultsWithFavorites;
  }

  Future<void> _onTextChanged(
    TextChanged event,
    Emitter<CompaniesState> emit,
  ) async {
    final searchTerm = event.text;

    if (_previousSearchedTerm == searchTerm) {
      return;
    }

    _previousSearchedTerm = searchTerm;

    if (searchTerm.isEmpty) {
      return emit(const CompaniesState.initial());
    }

    emit(const CompaniesState.loading());

    final results = await _getCompaniesUseCase(searchTerm);
    emit(
      results.fold(
        (failure) {
          _previousSearchedTerm = null;
          return CompaniesState.error(failure);
        },
        (searchResults) {
          _searchResults = searchResults;
          return CompaniesState.loaded(
            _matchSearchResultsWithFavorites(
              searchResults: searchResults,
              favorites: currentFavorites,
            ),
          );
        },
      ),
    );
  }

  Future<void> _addToFavorite(
    AddToFavorite event,
    Emitter<CompaniesState> emit,
  ) async {
    final futureFavorite = _findBySymbol(event.symbol)!;
    final result = await _favoritesApi.addFavorite(
      _mapToFavoritesDomain(futureFavorite),
    );

    result.fold(
      (_) => emit(
        const CompaniesState.error(
          CompaniesFailure.defaultError(),
        ),
      ),
      (_)
      // Do nothing. We'll be notified about changes to the favorites list through a stream.
      // ignore: no-empty-block
      {},
    );
  }

  Future<void> _removeFromFavorite(
    RemoveFromFavorite event,
    Emitter<CompaniesState> emit,
  ) async {
    final favoriteToRemove = _findBySymbol(event.symbol)!;
    final result = await _favoritesApi.removeFavorite(
      _mapToFavoritesDomain(favoriteToRemove),
    );

    result.fold(
      (_) => emit(
        const CompaniesState.error(
          CompaniesFailure.defaultError(),
        ),
      ),
      (_)
      // Do nothing. We'll be notified about changes to the favorites list through a stream.
      // ignore: no-empty-block
      {},
    );
  }

  void retry() {
    print(_previousEvent);
    if (_previousEvent != null) {
      add(_previousEvent!);
    }
  }

  Company? _findBySymbol(String symbol) {
    return _searchResults?.firstWhere((element) => element.symbol == symbol);
  }

  favorites_model.Company _mapToFavoritesDomain(Company company) {
    return favorites_model.Company(
      currency: company.currency,
      exchangeShortName: company.exchangeShortName,
      name: company.name,
      stockExchange: company.stockExchange,
      symbol: company.symbol,
    );
  }

  Company _mapToCompaniesDomain(favorites_model.Company company) {
    return Company(
      currency: company.currency,
      exchangeShortName: company.exchangeShortName,
      name: company.name,
      stockExchange: company.stockExchange,
      symbol: company.symbol,
    );
  }

  List<Company> _mapToCompaniesDomainList(List<favorites_model.Company> companies) {
    return companies.map(_mapToCompaniesDomain).toList(growable: false);
  }
}

extension _CompanyListX on List<Company> {
  List<Company> addFavorite(Company company) {
    final copy = toList(growable: false);
    final indexToReplace = copy.indexOf(company);
    final favorite = company.copyWith(isFavorite: true);
    if (indexToReplace != -1) {
      copy[indexToReplace] = favorite;
    }
    return copy;
  }
}
