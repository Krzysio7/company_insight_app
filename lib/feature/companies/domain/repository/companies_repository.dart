import 'package:company_insight_app/feature/companies/domain/failures/companies_failure.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:fpdart/fpdart.dart';

abstract class CompaniesRepository {
  Future<Either<CompaniesFailure, List<Company>>> getCompaniesListFromQuery(String query);
}
