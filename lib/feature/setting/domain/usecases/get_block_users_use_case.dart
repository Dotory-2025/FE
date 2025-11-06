import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetBlockUsersUseCase {
  final SettingRepository _settingRepository;
  GetBlockUsersUseCase(this._settingRepository);

  Future<List<BlockUsersResponse>> call() async {
    return await _settingRepository.getBlockUsers();
  }
}