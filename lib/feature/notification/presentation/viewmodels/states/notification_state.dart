import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/notification/data/models/notification_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(UiStatus.idle) UiStatus status,
    @Default([]) List<NotificationResponse> notifications,
    @Default('') String errorMessage,
  }) = _NotificationState;
}
