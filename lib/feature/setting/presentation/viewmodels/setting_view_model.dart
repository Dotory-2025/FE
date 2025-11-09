import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_my_info_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/setting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_view_model.g.dart';

@Riverpod(keepAlive: true)
class SettingViewModel extends _$SettingViewModel {
  @override
  SettingState build() {
    return SettingState();
  }

  Future<void> getMyInfo() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetMyInfoUseCase getMyInfoUseCase = ref.read(
        getMyInfoUseCaseProvider,
      );
      MyInfoResponse myInfo = await getMyInfoUseCase.call();
      state = state.copyWith(status: UiStatus.success, myInfo: myInfo);
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
