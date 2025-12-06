import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:dotori/feature/notification/presentation/viewmodels/states/notification_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_view_model.g.dart';

@riverpod
class NotificationViewModel extends _$NotificationViewModel {
  @override
  NotificationState build() {
    Future.microtask(() => loadNotifications());
    return const NotificationState(status: UiStatus.loading);
  }

  Future<void> loadNotifications() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final useCase = ref.read(getNotificationsUseCaseProvider);
      final result = await useCase.call();
      state = state.copyWith(status: UiStatus.success, notifications: result);
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
