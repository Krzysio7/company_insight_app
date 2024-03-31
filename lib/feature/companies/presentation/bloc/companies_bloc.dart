import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:company_insight_app/feature/companies/domain/failures/companies_failure.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:company_insight_app/feature/companies/presentation/use_cases/get_companies_list_from_query_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'companies_bloc.freezed.dart';
part 'companies_event.dart';
part 'companies_state.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

@injectable
class CompaniesBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompaniesBloc(this._getCompaniesUseCase) : super(const CompaniesState.initial()) {
    on<TextChanged>(_onTextChanged, transformer: debounce(_duration));
    on<AddToFavorite>(_addToFavorite, transformer: droppable());
    on<RemoveFromFavorite>(_removeFromFavorite, transformer: droppable());
  }

  final GetCompaniesListFromQueryUseCase _getCompaniesUseCase;

  String? previousSearchedTerm;

  Future<void> _onTextChanged(
    TextChanged event,
    Emitter<CompaniesState> emit,
  ) async {
    final searchTerm = event.text;

    if (previousSearchedTerm == searchTerm) {
      return;
    }

    previousSearchedTerm = searchTerm;

    if (searchTerm.isEmpty) {
      return emit(const CompaniesState.initial());
    }

    emit(const CompaniesState.loading());

    final results = await _getCompaniesUseCase(searchTerm);

    results.fold(
      (failure) => emit(CompaniesState.error(failure)),
      (companies) => emit(
        CompaniesState.loaded(companies),
      ),
    );
  }

  Future<void> _addToFavorite(
    AddToFavorite event,
    Emitter<CompaniesState> emit,
  ) async {
    // TODO(ks): Call favorites API.

    return Future.value();
  }

  Future<void> _removeFromFavorite(
    RemoveFromFavorite event,
    Emitter<CompaniesState> emit,
  ) {
    // TODO(ks): Call favorites API.

    return Future.value();
  }
}
