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
  }

  Future<void> setTrailerNumber(String value) async =>
      _storage.write(key: PreferenceKeys.trailerNumber, value: value);

  Future<void> setVehicleNumber(String value) async =>
      _storage.write(key: PreferenceKeys.vehicleNumber, value: value);

  String getTrailerNumber() => _storage.getString(PreferenceKeys.trailerNumber);

  String getVehicleNumber() => _storage.getString(PreferenceKeys.vehicleNumber);

  Future<void> setIsAfterLogin(bool value) async =>
      _storage.write(key: PreferenceKeys.isAfterLogin, value: value);

  bool isAfterLogin() => _storage.getBool(PreferenceKeys.isAfterLogin);

  Future<void> saveMessages(List<MessageResponse> messages, String type) async {
    await _isar.writeTxn(() async {
      final List<MessageResponse> newData = List.empty(growable: true);
      for (final message in messages) {
        final data = MessageResponse()
          ..message = message.message
          ..title = message.title
          ..date = message.date
          ..isRead = false;

        final isExist = await _isar.messageResponses
            .filter()
            .titleEqualTo(message.title.orEmpty)
            .messageEqualTo(message.message.orEmpty)
            .findAll();
        if (isExist.isEmpty) {
          newData.add(data);
        } else {
          final updateExisting = isExist.first
            ..type = type != "all" ? type : isExist.first.type;
          await _isar.messageResponses.put(updateExisting);
        }
      }

      final existing = await _isar.messageResponses.where().findAll();
      existing.addAll(newData);

      await _isar.messageResponses.putAll(existing.toSet().toList());
    });
  }

  Future<List<MessageResponse>> getMessages(String? type) async {
    final sevenDaysBefore = DateTime.now().subtract(const Duration(days: 7));
    if (type != null) {
      return _isar.messageResponses
          .filter()
          .typeEqualTo(type)
          .dateBetween(sevenDaysBefore, DateTime.now())
          .findAll();
    } else {
      return _isar.messageResponses
          .filter()
          .dateBetween(sevenDaysBefore, DateTime.now())
          .findAll();
    }
  }

  Future<int> getUnreadMessageCount(String type) async {
    final sevenDaysBefore = DateTime.now().subtract(const Duration(days: 7));
    if (type != "all") {
      final count = await _isar.messageResponses
          .filter()
          .isReadEqualTo(false)
          .typeContains(type)
          .dateBetween(sevenDaysBefore, DateTime.now())
          .count();

      return count;
    } else {
      return _isar.messageResponses
          .filter()
          .dateBetween(sevenDaysBefore, DateTime.now())
          .isReadEqualTo(false)
          .count();
    }
  }

  Future<void> updateMessage(int id) async {
    await _isar.writeTxn(() async {
      final result = await _isar.messageResponses.get(id);

      if (result != null) {
        result.isRead = true;
        await _isar.messageResponses.put(result);
      }
    });
  }

  Future<void> saveTripForm(List<ListTripFormResponse> tripForms) async {
    await _isar.writeTxn(() async {
      final List<ListTripFormResponse> newData = List.empty(growable: true);

      for (final trip in tripForms) {
        final data = ListTripFormResponse()
          ..id = trip.id
          ..shiftGroupId = trip.shiftGroupId
          ..driverId = trip.driverId
          ..name = trip.name
          ..shiftGroup = trip.shiftGroup
          ..shiftDate = trip.shiftDate
          ..vehicle = trip.vehicle
          ..containerNumber = trip.containerNumber
          ..transportFrom = trip.transportFrom
          ..deliveryTo = trip.deliveryTo
          ..size = trip.size;

        final isExist = await _isar.listTripFormResponses
            .filter()
            .idEqualTo(trip.id)
            .findAll();

        if (isExist.isEmpty) {
          newData.add(data);
        }
      }

      await _isar.listTripFormResponses.putAll(newData);
    });
  }

  Future<List<ListTripFormResponse>> getListTripForm(
    DateTime filteredDate,
  ) async =>
      _isar.listTripFormResponses
          .filter()
          .shiftDateBetween(
            filteredDate,
            filteredDate.add(const Duration(hours: 24)),
          )
          .findAll();

  Future<void> storeOfflineData<T>(T data) async {
    final offlineData = OfflineData()
      ..timestamp = DateTime.now()
      ..setData(data);

    await _isar.writeTxn(() async {
      await _isar.offlineDatas.put(offlineData);
    });
  }

  Future<List<OfflineData>> getOfflineData() async =>
      _isar.offlineDatas.where().findAll();

  Future<void> deleteOfflineData(int id) async {
    await _isar.writeTxn(() async => await _isar.offlineDatas.delete(id));
  }
}
