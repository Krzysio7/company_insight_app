import 'package:company_insight_app/core/typedefs.dart';
import 'package:company_insight_app/feature/companies/data/dtos/company_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required String symbol,
    required String name,
    required String currency,
    required String stockExchange,
    required String exchangeShortName,
    @Default(false) bool isFavorite,
  }) = _Company;

  factory Company.fromJson(JSON json) => _$CompanyFromJson(json);

  const Company._();

  CompanyDto get dto => CompanyDto(
        symbol: symbol,
        name: name,
        currency: currency,
        stockExchange: stockExchange,
        exchangeShortName: exchangeShortName,
      );
}
