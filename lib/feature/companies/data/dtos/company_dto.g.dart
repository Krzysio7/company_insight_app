// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDtoImpl _$$CompanyDtoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDtoImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      currency: json['currency'] as String,
      stockExchange: json['stockExchange'] as String,
      exchangeShortName: json['exchangeShortName'] as String,
    );

Map<String, dynamic> _$$CompanyDtoImplToJson(_$CompanyDtoImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'currency': instance.currency,
      'stockExchange': instance.stockExchange,
      'exchangeShortName': instance.exchangeShortName,
    };
