import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetHasCheckInUseCase extends UseCase<bool, void> {
  GetHasCheckInUseCase(this._repo);

  final DriverRepository _repo;

  @override
  bool invoke({void params}) => _repo.haveCheckIn();
}
