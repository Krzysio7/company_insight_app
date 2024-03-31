part of 'companies_bloc.dart';

@freezed
sealed class CompaniesEvent with _$CompaniesEvent {
  const factory CompaniesEvent.textChanged({required String text}) = TextChanged;
  const factory CompaniesEvent.addToFavorite({required String name}) = AddToFavorite;
  const factory CompaniesEvent.removeFromFavorite({required String name}) = RemoveFromFavorite;
}
