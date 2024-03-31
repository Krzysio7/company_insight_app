final class ApiConfig {
  ApiConfig._();

  // It's too pedantic in that case. We're just extracting the API key which will be used across the app.
  // ignore: do_not_use_environment
  static const apiKey = String.fromEnvironment('API_KEY');
  static const baseUrl = 'https://financialmodelingprep.com/api/v3/';
}
