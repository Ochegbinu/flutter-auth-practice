import 'package:dio/dio.dart';
import '../api/api_client.dart';
import '../api/token_manager.dart';

class AuthService {
  static Future<bool> login(String email, String password) async {
    try {
      final response = await apiClient.post('/login', data: {
        'email': email,
        'password': password,
      });

      final accessToken = response.data['access_token'];
      final refreshToken = response.data['refresh_token'];

      await TokenManager.saveTokens(accessToken, refreshToken);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> signup(String name, String email, String password) async {
    try {
      await apiClient.post('/register', data: {
        'name': name,
        'email': email,
        'password': password,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<void> logout() async {
    await TokenManager.clearTokens();
  }
}
