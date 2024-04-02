import 'package:company_insight_app/core/api_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
      )..interceptors.add(
          PrettyDioLogger(responseBody: false),
        );
}
