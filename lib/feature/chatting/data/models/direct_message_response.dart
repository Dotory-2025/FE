import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_message_response.g.dart';
part 'direct_message_response.freezed.dart';

@freezed
abstract class DirectMessageResponse with _$DirectMessageResponse {
  const factory DirectMessageResponse({
    required int id,
    required String profileImage,
    required String nickName,
    required String lastMessage,
    required String timeStamp,
    required bool isRead,
  }) = _DirectMessageResponse;

  factory DirectMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectMessageResponseFromJson(json);
}
