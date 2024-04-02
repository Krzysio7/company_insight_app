// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String?,
      stockExchange: json['stockExchange'] as String?,
      exchangeShortName: json['exchangeShortName'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'stockExchange': instance.stockExchange,
      'exchangeShortName': instance.exchangeShortName,
      'currency': instance.currency,
    };
