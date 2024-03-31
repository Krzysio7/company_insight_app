import 'package:freezed_annotation/freezed_annotation.dart';

part 'companies_failure.freezed.dart';

@freezed
class CompaniesFailure with _$CompaniesFailure {
  const factory CompaniesFailure.defaultError({Object? error}) = DefaultError;
  const factory CompaniesFailure.noInternet({Object? error}) = NoInternet;
}
