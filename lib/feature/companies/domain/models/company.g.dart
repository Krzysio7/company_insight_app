// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      currency: json['currency'] as String,
      stockExchange: json['stockExchange'] as String,
      exchangeShortName: json['exchangeShortName'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'currency': instance.currency,
      'stockExchange': instance.stockExchange,
      'exchangeShortName': instance.exchangeShortName,
      'isFavorite': instance.isFavorite,
    };
