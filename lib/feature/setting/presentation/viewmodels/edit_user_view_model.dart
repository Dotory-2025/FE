import 'dart:typed_data';

import 'package:dotori/feature/auth/presentation/viewmodels/routine_view_model.dart';
import 'package:dotori/feature/setting/data/models/update_user_request.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/update_user_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_user_view_model.g.dart';

@Riverpod(keepAlive: false)
class EditUserViewModel extends _$EditUserViewModel {
  @override
  EditUserState build() {
    return EditUserState();
  }

  void setNickname(String? nickname) {
    state = state.copyWith(nickName: nickname);
  }

  void setProfileImage(Uint8List? profileImage) {
    state = state.copyWith(profileImage: profileImage);
  }

  void setCroppedProfileImage(Uint8List? profileImage) {
    state = state.copyWith(croppedProfileImage: profileImage);
  }

  void setDormitory(String? dormitory) {
    state = state.copyWith(dormitory: dormitory);
  }

  void resetAll() {
    state = EditUserState();
  }

  bool get isInfoFilled {
    return state.nickName != null ||
        state.croppedProfileImage != null ||
        state.dormitory != null;
  }

  Future<void> updateUser() async {
    final UpdateUserUseCase updateUserUseCase = ref.read(
      updateUserUseCaseProvider,
    );
    final SettingViewModel settingViewModel = ref.read(
      settingViewModelProvider.notifier,
    );
    final RoutineViewModel routineViewModel = ref.read(
      routineViewModelProvider.notifier,
    );
    await updateUserUseCase.call(
      UpdateUserRequest(
        nickName: state.nickName,
        dormitory: state.dormitory,
        routines: routineViewModel.getRoutineAsCodes(),
      ),
    );
    await settingViewModel.getMyInfo();
  }
}
