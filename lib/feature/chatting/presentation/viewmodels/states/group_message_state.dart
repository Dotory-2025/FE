import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_message_state.freezed.dart';

@freezed
abstract class GroupMessageState with _$GroupMessageState {
  const factory GroupMessageState({
    /// --- 🧱 메세지 전송 실패 상태 추가
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    GroupMessageDetailResponse? groupMessages,
  }) = _GroupMessageState;
}
