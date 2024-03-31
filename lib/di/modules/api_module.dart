import 'package:company_insight_app/core/api_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(
          baseUrl: ApiConfig.baseUrl,
          queryParameters: {
            'apikey': ApiConfig.apiKey,
          },
        ),
      );
}
