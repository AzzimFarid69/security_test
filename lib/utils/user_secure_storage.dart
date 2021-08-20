import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static final _storage = FlutterSecureStorage();

  static const _keyEmail = 'email';
  static const _keyPassword = 'password';

  static Future setEmail(String value) async {
    await _storage.write(key: _keyEmail, value: value);
  }

  static Future setPassword(String value) async {
    await _storage.write(key: _keyPassword, value: value);
  }

  static Future setCredentials(String email, String password) async {
    setEmail(email);
    setPassword(password);
  }

  static Future<String> getEmail() async => await _storage.read(key: _keyEmail);
  static Future<String> getPassword() async => await _storage.read(key: _keyPassword);

  static Future deleteAll() async => _storage.deleteAll();
}
