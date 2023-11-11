import 'dart:async';

import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';
import 'package:driver/models/models.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostLoginUseCase extends UseCase<Result<LoginResponse>, LoginRequest> {
  final AuthRepository _repo;

  PostLoginUseCase(this._repo);

  @override
  Future<Result<LoginResponse>> invoke({required LoginRequest params}) =>
      _repo.postLogin(params);
}
