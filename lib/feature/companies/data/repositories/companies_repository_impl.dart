import 'dart:io';

import 'package:company_insight_app/feature/companies/data/data_sources/companies_remote_data_source.dart';
import 'package:company_insight_app/feature/companies/data/dtos/company_dto.dart';
import 'package:company_insight_app/feature/companies/domain/failures/companies_failure.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:company_insight_app/feature/companies/domain/repositories/companies_repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CompaniesRepository)
class CompaniesRepositoryImpl implements CompaniesRepository {
  CompaniesRepositoryImpl(this._companiesRemoteDataSource);

  final CompaniesRemoteDataSource _companiesRemoteDataSource;

  @override
  Future<Either<CompaniesFailure, List<Company>>> getCompaniesListFromQuery(String query) async {
    try {
      return right((await _companiesRemoteDataSource.getCompaniesListFromQuery(query)).models);
    } on DioException catch (exception) {
      switch (exception.error) {
        case SocketException _:
          return left(CompaniesFailure.noInternet(error: exception));
        case _:
          return left(CompaniesFailure.defaultError(error: exception));
      }
    }
  }
}
