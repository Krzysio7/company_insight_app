// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) {
  return _CompanyDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyDto {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get stockExchange => throw _privateConstructorUsedError;
  String get exchangeShortName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDtoCopyWith<CompanyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDtoCopyWith<$Res> {
  factory $CompanyDtoCopyWith(
          CompanyDto value, $Res Function(CompanyDto) then) =
      _$CompanyDtoCopyWithImpl<$Res, CompanyDto>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String currency,
      String stockExchange,
      String exchangeShortName});
}

/// @nodoc
class _$CompanyDtoCopyWithImpl<$Res, $Val extends CompanyDto>
    implements $CompanyDtoCopyWith<$Res> {
  _$CompanyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? currency = null,
    Object? stockExchange = null,
    Object? exchangeShortName = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stockExchange: null == stockExchange
          ? _value.stockExchange
          : stockExchange // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeShortName: null == exchangeShortName
          ? _value.exchangeShortName
          : exchangeShortName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyDtoImplCopyWith<$Res>
    implements $CompanyDtoCopyWith<$Res> {
  factory _$$CompanyDtoImplCopyWith(
          _$CompanyDtoImpl value, $Res Function(_$CompanyDtoImpl) then) =
      __$$CompanyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String currency,
      String stockExchange,
      String exchangeShortName});
}

/// @nodoc
class __$$CompanyDtoImplCopyWithImpl<$Res>
    extends _$CompanyDtoCopyWithImpl<$Res, _$CompanyDtoImpl>
    implements _$$CompanyDtoImplCopyWith<$Res> {
  __$$CompanyDtoImplCopyWithImpl(
      _$CompanyDtoImpl _value, $Res Function(_$CompanyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? currency = null,
    Object? stockExchange = null,
    Object? exchangeShortName = null,
  }) {
    return _then(_$CompanyDtoImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stockExchange: null == stockExchange
          ? _value.stockExchange
          : stockExchange // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeShortName: null == exchangeShortName
          ? _value.exchangeShortName
          : exchangeShortName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDtoImpl extends _CompanyDto {
  const _$CompanyDtoImpl(
      {required this.symbol,
      required this.name,
      required this.currency,
      required this.stockExchange,
      required this.exchangeShortName})
      : super._();

  factory _$CompanyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDtoImplFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String currency;
  @override
  final String stockExchange;
  @override
  final String exchangeShortName;

  @override
  String toString() {
    return 'CompanyDto(symbol: $symbol, name: $name, currency: $currency, stockExchange: $stockExchange, exchangeShortName: $exchangeShortName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDtoImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.stockExchange, stockExchange) ||
                other.stockExchange == stockExchange) &&
            (identical(other.exchangeShortName, exchangeShortName) ||
                other.exchangeShortName == exchangeShortName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, name, currency, stockExchange, exchangeShortName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      __$$CompanyDtoImplCopyWithImpl<_$CompanyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDtoImplToJson(
      this,
    );
  }
}

abstract class _CompanyDto extends CompanyDto {
  const factory _CompanyDto(
      {required final String symbol,
      required final String name,
      required final String currency,
      required final String stockExchange,
      required final String exchangeShortName}) = _$CompanyDtoImpl;
  const _CompanyDto._() : super._();

  factory _CompanyDto.fromJson(Map<String, dynamic> json) =
      _$CompanyDtoImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get currency;
  @override
  String get stockExchange;
  @override
  String get exchangeShortName;
  @override
  @JsonKey(ignore: true)
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
