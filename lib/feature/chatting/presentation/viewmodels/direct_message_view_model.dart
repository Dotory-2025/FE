import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/di/chatting_providers.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_direct_message_detail_use_case.dart';
import 'package:dotori/feature/chatting/presentation/viewmodels/states/direct_message_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'direct_message_view_model.g.dart';

@riverpod
class DirectMessageViewModel extends _$DirectMessageViewModel {
  @override
  DirectMessageState build() {
    return DirectMessageState();
  }

  Future<void> getDirectMessageDetail(int id) async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetDirectMessageDetailUseCase getDirectMessageDetailUseCase = ref
          .read(getDirectMessageDetailUseCaseProvider);
      DirectMessageDetailResponse directMessages =
          await getDirectMessageDetailUseCase.call(id);
      state = state.copyWith(
        status: UiStatus.success,
        directMessages: directMessages,
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
