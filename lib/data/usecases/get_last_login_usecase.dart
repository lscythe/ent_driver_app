import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/data/usecases/usecase.dart';

class GetLastLoginUseCase extends UseCase<int, void> {
  GetLastLoginUseCase(this._repo);

  final AuthRepository _repo;

  @override
  int invoke({void params}) => _repo.lastLogin();
}
