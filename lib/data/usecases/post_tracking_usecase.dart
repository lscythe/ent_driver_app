import 'dart:async';

import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';
import 'package:driver/models/models.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PostTrackingUseCase
    extends UseCase<Result<EmptyResponse>, TrackingRequest> {
  PostTrackingUseCase(this._repo);

  final DriverRepository _repo;

  @override
  FutureOr<Result<EmptyResponse>> invoke({required TrackingRequest params}) =>
      _repo.postTracking(params);
}
