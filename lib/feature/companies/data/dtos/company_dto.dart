import 'package:company_insight_app/core/typedefs.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_dto.freezed.dart';
part 'company_dto.g.dart';

@freezed
class CompanyDto with _$CompanyDto {
  const factory CompanyDto({
    required String symbol,
    required String name,
    required String currency,
    required String stockExchange,
    required String exchangeShortName,
  }) = _CompanyDto;

  factory CompanyDto.fromJson(JSON json) => _$CompanyDtoFromJson(json);

  const CompanyDto._();

  Company get model => Company(
        symbol: symbol,
        name: name,
        currency: currency,
        stockExchange: stockExchange,
        exchangeShortName: exchangeShortName,
      );
}

extension CompanyDtoListExtension on List<CompanyDto> {
  List<Company> get models => map((x) => x.model).toList(growable: false);
}
