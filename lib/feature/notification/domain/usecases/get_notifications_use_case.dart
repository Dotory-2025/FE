import 'package:dotori/feature/notification/data/models/notification_response.dart';
import 'package:dotori/feature/notification/di/notification_providers.dart';
import 'package:dotori/feature/notification/domain/repositories/notification_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_notifications_use_case.g.dart';

@riverpod
GetNotificationsUseCase getNotificationsUseCase(Ref ref) {
  return GetNotificationsUseCase(ref.read(notificationRepositoryProvider));
}

class GetNotificationsUseCase {
  final NotificationRepository _repository;

  GetNotificationsUseCase(this._repository);

  Future<List<NotificationResponse>> call() {
    return _repository.getNotifications();
  }
}
