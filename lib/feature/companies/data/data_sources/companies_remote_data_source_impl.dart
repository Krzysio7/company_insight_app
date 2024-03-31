import 'package:company_insight_app/feature/companies/data/data_sources/companies_remote_data_source.dart';
import 'package:company_insight_app/feature/companies/data/dtos/company_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'companies_remote_data_source_impl.g.dart';

@RestApi()
@Injectable(as: CompaniesRemoteDataSource)
abstract class CompaniesRemoteDataSourceImpl implements CompaniesRemoteDataSource {
  @factoryMethod
  factory CompaniesRemoteDataSourceImpl(Dio dio) = _CompaniesRemoteDataSourceImpl;

  @override
  @GET('/search')
  Future<List<CompanyDto>> getCompaniesListFromQuery(
    @Query('query') String query,
  );
}
