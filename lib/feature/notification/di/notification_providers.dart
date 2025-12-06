import 'package:dotori/feature/notification/data/repositories/notification_repository_fake.dart';
import 'package:dotori/feature/notification/domain/repositories/notification_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_providers.g.dart';

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  return NotificationRepositoryFake();
}
