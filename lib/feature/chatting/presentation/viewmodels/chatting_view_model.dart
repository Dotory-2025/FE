import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/chatting/di/chatting_providers.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_direct_messages_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_group_messages_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/mark_as_dm_read_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/mark_as_group_read_use_case.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/chatting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chatting_view_model.g.dart';

@riverpod
class ChattingViewModel extends _$ChattingViewModel {
  @override
  ChattingState build() {
    return ChattingState();
  }

  Future<void> getChatRooms() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetDirectMessagesUseCase getDirectMessagesUseCase = ref.read(
        getDirectMessagesUseCaseProvider,
      );
      final GetGroupMessagesUseCase getGroupMessagesUseCase = ref.read(
        getGroupMessagesUseCaseProvider,
      );
      List<GroupMessageResponse> groupMessages = await getGroupMessagesUseCase
          .call();
      List<DirectMessageResponse> directMessages =
          await getDirectMessagesUseCase.call();
      state = state.copyWith(
        status: UiStatus.success,
        directMessages: directMessages,
        groupMessages: groupMessages,
      );
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> markAsDmRead (int id) async {
    MarkAsDmReadUseCase markAsDmReadUseCase = ref.read(markAsDmReadUseCaseProvider);
    await markAsDmReadUseCase.call(id);
    final List<DirectMessageResponse> updatedList = state.directMessages.map((m) {
      return m.id == id ? m.copyWith(isRead: true) : m;
    }).toList();

    state = state.copyWith(directMessages: updatedList);
  }

  Future<void> markAsGroupRead (int id) async {
    MarkAsGroupReadUseCase markAsGroupReadUseCase = ref.read(markAsGroupReadUseCaseProvider);
    await markAsGroupReadUseCase.call(id);
    final List<GroupMessageResponse> updatedList = state.groupMessages.map((m) {
      return m.id == id ? m.copyWith(isRead: true) : m;
    }).toList();

    state = state.copyWith(groupMessages: updatedList);
  }
}
