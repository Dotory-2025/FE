import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatting_state.freezed.dart';

@freezed
abstract class ChattingState with _$ChattingState {
  const factory ChattingState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    @Default([]) List<DirectMessageResponse> directMessages,
    @Default([]) List<GroupMessageResponse> groupMessages,
  }) = _ChattingState;
}
