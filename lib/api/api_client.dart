import 'package:dio/dio.dart';
import 'token_manager.dart';

class ApiClient {
  final Dio dio = Dio();

  ApiClient() {
    dio.options.baseUrl = "http://127.0.0.1:8000/api"; 
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await TokenManager.getAccessToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == 401) {
          final refreshToken = await TokenManager.getRefreshToken();
          if (refreshToken != null) {
            try {
              final response = await dio.post('/refresh',
                  options: Options(headers: {
                    'Authorization': 'Bearer $refreshToken',
                  }));

              final newAccessToken = response.data['access_token'];
              await TokenManager.saveTokens(newAccessToken, refreshToken);

              e.requestOptions.headers['Authorization'] =
                  'Bearer $newAccessToken';
              final retryResponse = await dio.fetch(e.requestOptions);
              return handler.resolve(retryResponse);
            } catch (_) {
              await TokenManager.clearTokens();
            }
          }
        }
        return handler.next(e);
      },
    ));
  }
}

final apiClient = ApiClient().dio;
