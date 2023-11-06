import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SecureStorageService {
  const SecureStorageService(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  Future<void> write({required String key, required String value}) async =>
      _secureStorage.write(key: key, value: value);

  Future<String> read(String key, {String defaultValue = ""}) async =>
      await _secureStorage.read(key: key) ?? defaultValue;

  Future<void> remove(String key) async => _secureStorage.delete(key: key);

  Future<void> clear() async => _secureStorage.deleteAll();
}
