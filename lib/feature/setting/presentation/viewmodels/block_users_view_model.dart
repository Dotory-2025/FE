import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_block_users_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/block_users_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'block_users_view_model.g.dart';

@riverpod
class BlockUsersViewModel extends _$BlockUsersViewModel {
  @override
  BlockUsersState build() {
    return BlockUsersState();
  }

  Future<void> getBlockUsers() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetBlockUsersUseCase getBlockUsersUseCase = ref.read(
        getBlockUsersUseCaseProvider,
      );
      List<BlockUsersResponse> blockUsers = await getBlockUsersUseCase.call();
      state = state.copyWith(status: UiStatus.success, blockUsers: blockUsers);
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
