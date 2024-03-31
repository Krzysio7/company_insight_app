import 'package:company_insight_app/feature/companies/data/dtos/company_dto.dart';

abstract class CompaniesRemoteDataSource {
  Future<List<CompanyDto>> getCompaniesListFromQuery(String query);
}
