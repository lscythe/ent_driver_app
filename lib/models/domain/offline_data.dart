import 'dart:convert';

import 'package:isar/isar.dart';

part 'offline_data.g.dart';

@collection
class OfflineData {
  Id? id;

  @Index()
  late DateTime timestamp;

  late String data;

  void setData<T>(T data) {
    this.data = jsonEncode(data);
  }

  T getData<T>() {
    return jsonDecode(data) as T;
  }
}
