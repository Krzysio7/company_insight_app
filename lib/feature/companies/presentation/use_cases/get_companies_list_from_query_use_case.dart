import 'package:company_insight_app/feature/companies/domain/failures/companies_failure.dart';
import 'package:company_insight_app/feature/companies/domain/models/company.dart';
import 'package:company_insight_app/feature/companies/domain/repository/companies_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCompaniesListFromQueryUseCase {
  const GetCompaniesListFromQueryUseCase(this._repository);

  final CompaniesRepository _repository;

  Future<Either<CompaniesFailure, List<Company>>> call(String query) => _repository.getCompaniesListFromQuery(query);
}
