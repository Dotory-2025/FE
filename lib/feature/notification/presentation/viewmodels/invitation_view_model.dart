import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/notification/domain/usecases/get_invitations_use_case.dart';
import 'package:dotori/feature/notification/presentation/viewmodels/states/invitation_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'invitation_view_model.g.dart';

@riverpod
class InvitationViewModel extends _$InvitationViewModel {
  @override
  InvitationState build() {
    Future.microtask(() => loadInvitations());
    return const InvitationState(status: UiStatus.loading);
  }

  Future<void> loadInvitations() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final useCase = ref.read(getInvitationsUseCaseProvider);
      final result = await useCase.call();
      state = state.copyWith(status: UiStatus.success, invitations: result);
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
