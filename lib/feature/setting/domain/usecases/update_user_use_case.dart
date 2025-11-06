import 'package:dotori/feature/setting/data/models/update_user_request.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class UpdateUserUseCase {
  final SettingRepository _settingRepository;
  UpdateUserUseCase(this._settingRepository);

  Future<void> call(UpdateUserRequest user) async {
    return await _settingRepository.updateUser(user);
  }
}