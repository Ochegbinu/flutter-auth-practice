import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenManager {
  static const _storage = FlutterSecureStorage();
  static const _accessTokenKey = 'accessToken';
  static const _refreshTokenKey = 'refreshToken';

  static Future<void> saveTokens(String access, String refresh) async {
    await _storage.write(key: _accessTokenKey, value: access);
    await _storage.write(key: _refreshTokenKey, value: refresh);
  }

  static Future<String?> getAccessToken() async =>
      await _storage.read(key: _accessTokenKey);

  static Future<String?> getRefreshToken() async =>
      await _storage.read(key: _refreshTokenKey);

  static Future<void> clearTokens() async {
    await _storage.deleteAll();
  }

  static Future<bool> isAccessTokenExpired() async {
    final token = await getAccessToken();
    if (token == null) return true;
    return JwtDecoder.isExpired(token);
  }
}
