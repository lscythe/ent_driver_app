import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class StorageService {
  const StorageService(this._preferences);

  final SharedPreferences _preferences;

  Future<void> write({required String key, required dynamic value}) async {
    if (value is String) {
      await _preferences.setString(key, value);
    } else if (value is int) {
      await _preferences.setInt(key, value);
    } else if (value is bool) {
      await _preferences.setBool(key, value);
    } else if (value is double) {
      await _preferences.setDouble(key, value);
    } else if (value is List<String>) {
      await _preferences.setStringList(key, value);
    } else {
      throw "Unsupported type of ${value.runtimeType}";
    }
  }

  String getString(String key, {String defaultValue = ""}) =>
      _preferences.getString(key) ?? defaultValue;

  bool getBool(String key, {bool defaultValue = false}) =>
      _preferences.getBool(key) ?? defaultValue;

  double getDouble(String key, {double defaultValue = 0.0}) =>
      _preferences.getDouble(key) ?? defaultValue;

  int getInt(String key, {int defaultValue = 0}) =>
      _preferences.getInt(key) ?? defaultValue;

  List<String> getStringList(
    String key, {
    List<String> defaultValue = const [],
  }) =>
      _preferences.getStringList(key) ?? defaultValue;

  Future<void> remove(String key) async => _preferences.remove(key);

  Future<void> clear() async => _preferences.clear();
}
