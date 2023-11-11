import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';

class GetLastCheckInUseCase extends UseCase<int, void> {
  GetLastCheckInUseCase(this._repo);

  final DriverRepository _repo;

  @override
  int invoke({required void params}) => _repo.lastCheckIn();
}
