import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_message_detail_response.freezed.dart';
part 'direct_message_detail_response.g.dart';

/// 메시지 종류
@JsonEnum(alwaysCreate: true)
enum MessageType {
  @JsonValue('text') text,
  @JsonValue('image') image,
  @JsonValue('house_invite') houseInvite,
  @JsonValue('house_invite_received') houseInviteReceived,
}

/// 보낸 사람 구분
@JsonEnum(alwaysCreate: true)
enum SenderType {
  @JsonValue('me') me,
  @JsonValue('opponent') opponent,
}

/// 전체 채팅방 정보
@freezed
abstract class DirectMessageDetailResponse with _$DirectMessageDetailResponse {
  const factory DirectMessageDetailResponse({
    required int id,
    String? roomName,
    required String profileImage,
    required String nickName,
    required String dormitory,
    required List<String> tags,
    required List<DirectChatMessage> messages,
  }) = _DirectMessageDetailResponse;

  factory DirectMessageDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectMessageDetailResponseFromJson(json);
}

/// 개별 메시지
@freezed
abstract class DirectChatMessage with _$DirectChatMessage {
  const factory DirectChatMessage({
    required int id,
    required SenderType senderType,
    required MessageType type,
    String? imageUrl,
    String? content,
    String? houseName,
    required String timeStamp,
  }) = _DirectChatMessage;

  factory DirectChatMessage.fromJson(Map<String, dynamic> json) =>
      _$DirectChatMessageFromJson(json);
}
