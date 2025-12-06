import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/notification/data/models/invitation_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation_state.freezed.dart';

@freezed
abstract class InvitationState with _$InvitationState {
  const factory InvitationState({
    @Default(UiStatus.idle) UiStatus status,
    @Default([]) List<InvitationResponse> invitations,
    @Default('') String errorMessage,
  }) = _InvitationState;
}
