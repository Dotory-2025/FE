import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/di/chatting_providers.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_direct_message_detail_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_group_message_detail_use_case.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/group_message_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_message_view_model.g.dart';

@riverpod
class GroupMessageViewModel extends _$GroupMessageViewModel {
  @override
  GroupMessageState build() {
    return GroupMessageState();
  }

  Future<void> getGroupMessageDetail(int id) async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetGroupMessageDetailUseCase getGroupMessageDetailUseCase = ref
          .read(getGroupMessageDetailUseCaseProvider);
      GroupMessageDetailResponse groupMessages =
      await getGroupMessageDetailUseCase.call(id);
      state = state.copyWith(
        status: UiStatus.success,
        groupMessages: groupMessages,
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
      print(e.toString());
      print(stackTrace);
    }
  }
}
