import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:dotori/feature/setting/domain/repositories/setting_repository.dart';

class GetMyPostsUseCase {
  final SettingRepository _settingRepository;
  GetMyPostsUseCase(this._settingRepository);

  Future<List<MyPostsResponse>> call() async {
    return await _settingRepository.getMyPosts();
  }
}