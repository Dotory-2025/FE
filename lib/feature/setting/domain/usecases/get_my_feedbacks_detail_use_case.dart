import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetMyFeedbacksDetailUseCase {
  final SettingRepository _settingRepository;
  GetMyFeedbacksDetailUseCase(this._settingRepository);

  Future<MyFeedbacksDetailResponse> call(int id) async {
    return await _settingRepository.getMyFeedbacksDetail(id);
  }
}