import 'package:driver/models/models.dart';
import 'package:driver/services/service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepository {
  const AuthRepository(this.api, this.secureStorage, this.storageService);

  final ApiService api;
  final SecureStorageService secureStorage;
  final StorageService storageService;

  Future<void> postLogin(LoginRequest request) async {
    final response = await api.postLogin(request);
  }
}
