import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetMyInfoUseCase {
  final SettingRepository _settingRepository;
  GetMyInfoUseCase(this._settingRepository);

  Future<MyInfoResponse> call() async {
    return await _settingRepository.getMyInfo();
  }
}