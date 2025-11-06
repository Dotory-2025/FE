import 'package:dotori/feature/setting/data/repositories/setting_repository_fake.dart';
import 'package:dotori/feature/setting/domain/usecases/get_block_users_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_feedback_history_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_matching_history_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_feedbacks_detail_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_feedbacks_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_info_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_posts_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/update_user_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_providers.g.dart';

@riverpod
SettingRepositoryFake settingRepositoryFake(Ref ref) {
  return SettingRepositoryFake();
}

@riverpod
GetMyPostsUseCase getMyPostsUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetMyPostsUseCase(settingRepositoryFake);
}

@riverpod
GetBlockUsersUseCase getBlockUsersUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetBlockUsersUseCase(settingRepositoryFake);
}

@riverpod
GetMyInfoUseCase getMyInfoUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetMyInfoUseCase(settingRepositoryFake);
}

@riverpod
UpdateUserUseCase updateUserUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return UpdateUserUseCase(settingRepositoryFake);
}

@riverpod
GetMyFeedbacksUseCase getMyFeedbacksUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetMyFeedbacksUseCase(settingRepositoryFake);
}

@riverpod
GetMyFeedbacksDetailUseCase getMyFeedbacksDetailUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetMyFeedbacksDetailUseCase(settingRepositoryFake);
}

@riverpod
GetFeedbackHistoryUseCase getFeedbackHistoryUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetFeedbackHistoryUseCase(settingRepositoryFake);
}

@riverpod
GetMatchingHistoryUseCase getMatchingHistoryUseCase(Ref ref) {
  final SettingRepositoryFake settingRepositoryFake = ref.watch(
    settingRepositoryFakeProvider,
  );
  return GetMatchingHistoryUseCase(settingRepositoryFake);
}

