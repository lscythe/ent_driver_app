import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:driver/services/service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@lazySingleton
class LocalDataSource {
  const LocalDataSource(
    this._secureStorage,
    this._storage,
    this._isar,
  );

  final FlutterSecureStorage _secureStorage;
  final StorageService _storage;
  final Isar _isar;

  Future<void> setAccessToken(String value) async =>
      _secureStorage.write(key: PreferenceKeys.accessToken, value: value);

  Future<String> getAccessToken() async =>
      await _secureStorage.read(key: PreferenceKeys.accessToken) ?? "";

  Future<void> setLastLogin(int value) async =>
      _storage.write(key: PreferenceKeys.lastLogin, value: value);

  int getLastLogin() => _storage.getInt(PreferenceKeys.lastLogin);

  Future<void> setLastCheckIn(int value) async =>
      _storage.write(key: PreferenceKeys.lastCheckIn, value: value);

  int getLastCheckIn() => _storage.getInt(PreferenceKeys.lastCheckIn);

  Future<void> setHaveCheckIn(bool value) async =>
      _storage.write(key: PreferenceKeys.haveCheckIn, value: value);

  bool getHaveCheckIn() => _storage.getBool(PreferenceKeys.haveCheckIn);

  Future<void> saveUser(DriverResponse driver) async {
    await _isar.writeTxn(() async {
      await _isar.driverResponses.clear();
      await _isar.driverResponses.put(driver);
      await _storage.write(key: PreferenceKeys.currentUserId, value: driver.id);
    });
  }

  Future<DriverResponse?> getUser() async {
    final driverId = _storage.getInt(PreferenceKeys.currentUserId);

    if (!driverId.isZero) {
      return _isar.driverResponses.get(driverId);
    }

    return null;
  }

  Future<void> clear() async {
    await _secureStorage.deleteAll();
    await _storage.clear();
    await _isar.writeTxn(() async => _isar.clear());
  }

  Future<void> setTrailerNumber(String value) async =>
      _storage.write(key: PreferenceKeys.trailerNumber, value: value);

  Future<void> setVehicleNumber(String value) async =>
      _storage.write(key: PreferenceKeys.vehicleNumber, value: value);

  String getTrailerNumber() => _storage.getString(PreferenceKeys.trailerNumber);

  String getVehicleNumber() => _storage.getString(PreferenceKeys.vehicleNumber);

  Future<void> saveMessages(List<MessageResponse> messages, String type) async {
    await _isar.writeTxn(() async {
      final List<MessageResponse> newData = List.empty(growable: true);
      for (final message in messages) {
        final data = MessageResponse()
          ..message = message.message
          ..title = message.title
          ..date = message.date
          ..isRead = false
          ..type = type != "all" ? type : null;

        final isExist = await _isar.messageResponses
            .filter()
            .titleEqualTo(message.title.orEmpty)
            .messageEqualTo(message.message.orEmpty)
            .findAll();
        print(isExist.length);
        if (!isExist.isNotEmpty) {
          newData.add(data);
        } else {
          final updateExisting = isExist.first
            ..type = type != "all" ? type : null;
          await _isar.messageResponses.put(updateExisting);
        }
      }

      final existing = await _isar.messageResponses.where().findAll();
      existing.addAll(newData);

      await _isar.messageResponses.putAll(existing.toSet().toList());
    });
  }

  Future<List<MessageResponse>> getMessages() async =>
      _isar.messageResponses.where().findAll();

  Future<int> getUnreadMessageCount(String type) async => _isar.messageResponses
      .filter()
      .isReadEqualTo(false)
      .typeContains(type != "all" ? type : "")
      .count();
}
