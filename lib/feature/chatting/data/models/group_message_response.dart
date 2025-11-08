import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_message_response.freezed.dart';
part 'group_message_response.g.dart';

@freezed
abstract class GroupMessageResponse with _$GroupMessageResponse {
  const factory GroupMessageResponse({
    required int id,
    required String dormitory,
    required String semester,
    required String profileImage1,
    required String profileImage2,
    required String groupName,
    required int headCount,
    required List<String> tags,
    required String timeStamp,
    required bool isRead,
  }) = _GroupMessageResponse;

  factory GroupMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupMessageResponseFromJson(json);
}
