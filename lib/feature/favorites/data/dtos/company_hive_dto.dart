import 'package:company_insight_app/feature/favorites/domain/models/company.dart';
import 'package:hive/hive.dart';

part 'company_hive_dto.g.dart';

@HiveType(adapterName: 'CompanyTypeAdapter', typeId: 0)
class CompanyHiveDto extends HiveObject {
  CompanyHiveDto({
    required this.symbol,
    this.name,
    this.stockExchange,
    this.exchangeShortName,
    this.currency,
  });

  @HiveField(0)
  final String symbol;

  @HiveField(1)
  final String? name;

  @HiveField(2)
  final String? currency;

  @HiveField(3)
  final String? stockExchange;

  @HiveField(4)
  final String? exchangeShortName;

  Company get model => Company(
        symbol: symbol,
        name: name,
        currency: currency,
        stockExchange: stockExchange,
        exchangeShortName: exchangeShortName,
      );
}

extension CompanyDtoListExtension on List<CompanyHiveDto> {
  List<Company> get models => map((x) => x.model).toList(growable: false);
}
