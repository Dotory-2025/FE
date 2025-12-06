import 'package:dotori/feature/notification/data/models/invitation_response.dart';
import 'package:dotori/feature/notification/di/notification_providers.dart';
import 'package:dotori/feature/notification/domain/repositories/notification_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_invitations_use_case.g.dart';

@riverpod
GetInvitationsUseCase getInvitationsUseCase(Ref ref) {
  return GetInvitationsUseCase(ref.read(notificationRepositoryProvider));
}

class GetInvitationsUseCase {
  final NotificationRepository _repository;

  GetInvitationsUseCase(this._repository);

  Future<List<InvitationResponse>> call() {
    return _repository.getInvitations();
  }
}
