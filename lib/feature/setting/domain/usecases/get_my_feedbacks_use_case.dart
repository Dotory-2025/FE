import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetMyFeedbacksUseCase {
  final SettingRepository _settingRepository;
  GetMyFeedbacksUseCase(this._settingRepository);

  Future<List<MyFeedbacksResponse>> call() async {
    return await _settingRepository.getMyFeedbacks();
  }
}