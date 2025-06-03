import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import '../models/user_model.dart';

class AuthService {
  final Dio _dio;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final String _baseUrl = 'https://dummyjson.com';

  AuthService() : _dio = Dio() {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.interceptors.add(
      CertificatePinningInterceptor(
        allowedSHAFingerprints: [
          '3D546E81BE5A9F71A0CA95501862D405DE62973501EC7E803A87E26332A5BBC5',
        ],
      ),
    );
  }

  Future<UserModel> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {
          'username': username,
          'password': password,
          'expiresInMins': 30,
        },
      );
      final user = UserModel.fromJson(response.data);
      // Lưu token an toàn
      await _storage.write(key: 'access_token', value: user.accessToken);
      await _storage.write(key: 'refresh_token', value: user.refreshToken);
      return user;
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: 'access_token');
  }
}
