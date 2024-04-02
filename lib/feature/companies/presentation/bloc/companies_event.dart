part of 'companies_bloc.dart';

@freezed
sealed class CompaniesEvent with _$CompaniesEvent {
  const factory CompaniesEvent.init() = Initialize;
  const factory CompaniesEvent.textChanged({required String text}) = TextChanged;
  const factory CompaniesEvent.addToFavorite({required String symbol}) = AddToFavorite;
  const factory CompaniesEvent.removeFromFavorite({required String symbol}) = RemoveFromFavorite;
}
