import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_message_detail_response.freezed.dart';
part 'group_message_detail_response.g.dart';

/// 메시지 종류
@JsonEnum(alwaysCreate: true)
enum MessageType {
  @JsonValue('text') text,
  @JsonValue('image') image,
}

/// 보낸 사람 구분
@JsonEnum(alwaysCreate: true)
enum SenderType {
  @JsonValue('me') me,
  @JsonValue('opponent') opponent,
}

/// 전체 채팅방 정보
@freezed
abstract class GroupMessageDetailResponse with _$GroupMessageDetailResponse {
  const factory GroupMessageDetailResponse({
    required int id,
    required String roomName,
    required String profileImage,
    required String dormitory,
    required List<String> tags,
    required List<GroupChatMessage> messages,
  }) = _GroupMessageDetailResponse;

  factory GroupMessageDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupMessageDetailResponseFromJson(json);
}

/// 개별 메시지
@freezed
abstract class GroupChatMessage with _$GroupChatMessage {
  const factory GroupChatMessage({
    required int id,
    required nickName,
    required profileImage,
    required SenderType senderType,
    required MessageType type,
    String? imageUrl,
    String? content,
    required String timeStamp,
  }) = _GroupChatMessage;

  factory GroupChatMessage.fromJson(Map<String, dynamic> json) =>
      _$GroupChatMessageFromJson(json);
}
