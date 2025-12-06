import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
abstract class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    required int id,
    required String title,
    required String description,
    required String timeAgo,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
