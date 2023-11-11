import 'dart:async';

import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';

class GetAccessTokenUseCase extends UseCase<String, void> {
  GetAccessTokenUseCase(this._repo);

  final AuthRepository _repo;

  @override
  Future<String> invoke({void params}) => _repo.accessToken();
}
