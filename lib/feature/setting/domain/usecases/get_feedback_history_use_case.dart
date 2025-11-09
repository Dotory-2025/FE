import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetFeedbackHistoryUseCase {
  final SettingRepository _settingRepository;
  GetFeedbackHistoryUseCase(this._settingRepository);

  Future<List<FeedbackHistoryResponse>> call() async {
    return await _settingRepository.getFeedbackHistory();
  }
}