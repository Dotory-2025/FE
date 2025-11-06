import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetMatchingHistoryUseCase {
  final SettingRepository _settingRepository;
  GetMatchingHistoryUseCase(this._settingRepository);

  Future<List<MatchingHistoryResponse>> call() async {
    return await _settingRepository.getMatchingHistory();
  }
}