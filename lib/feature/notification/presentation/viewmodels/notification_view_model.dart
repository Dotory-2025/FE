import 'package:dotori/feature/notification/data/models/invitation_model.dart';
import 'package:dotori/feature/notification/data/models/notification_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// --- Invitation ViewModel ---

// 상태 정의
sealed class InvitationUiState {}

class InvitationSuccess implements InvitationUiState {
  final List<InvitationModel> invitations;
  InvitationSuccess(this.invitations);
}

class InvitationError implements InvitationUiState {
  final String message;
  InvitationError(this.message);
}

class InvitationLoading implements InvitationUiState {}

class InvitationViewModel extends Notifier<InvitationUiState> {
  @override
  InvitationUiState build() {
    // 초기화 시 목업 데이터 로드 (테스트용)
    loadMockData();
    // return InvitationError("서비스 이용이 원활하지 않아요"); // 에러 상태 테스트
    return state;
  }

  void loadMockData() {
    state = InvitationSuccess([
      InvitationModel(
        id: 1,
        title: '세연학사 1학기',
        description: '사용자 닉네임 님이 소통 잘 되는 룸메원해요 하우스에 초대했습니다.',
        timeAgo: '2분 전',
        type: InvitationType.green,
      ),
      InvitationModel(
        id: 2,
        title: '청연학사 1학기',
        description: '사용자 닉네임 님이 소통 잘 되는 룸메원해요 하우스에 참가를 요청하였습니다.',
        timeAgo: '2분 전',
        type: InvitationType.blue,
      ),
      InvitationModel(
        id: 3,
        title: '매지학사 1학기',
        description: '사용자 닉네임 님이 소통 잘 되는 룸메원해요 하우스에 초대했습니다.',
        timeAgo: '2분 전',
        type: InvitationType.orange,
      ),
      InvitationModel(
        id: 4,
        title: '세연학사 1학기',
        description: '사용자 닉네임 님이 소통 잘 되는 룸메원해요 하우스에 초대했습니다.',
        timeAgo: '2분 전',
        type: InvitationType.green,
      ),
    ]);
  }

  void clearData() {
    state = InvitationSuccess([]);
  }

  void setError() {
    state = InvitationError("서비스 이용이 원활하지 않아요");
  }
}

final invitationProvider =
    NotifierProvider<InvitationViewModel, InvitationUiState>(() {
      return InvitationViewModel();
    });

// --- Notification ViewModel ---

// 상태 정의
sealed class NotificationUiState {}

class NotificationSuccess implements NotificationUiState {
  final List<NotificationModel> notifications;
  NotificationSuccess(this.notifications);
}

class NotificationError implements NotificationUiState {
  final String message;
  NotificationError(this.message);
}

class NotificationLoading implements NotificationUiState {}

class NotificationListViewModel extends Notifier<NotificationUiState> {
  @override
  NotificationUiState build() {
    // 초기 상태: 빈 리스트 (Success with empty list)
    // 테스트를 위해 여기서 상태를 변경해보세요.
    // return NotificationError("서비스 이용이 원활하지 않아요"); // 에러 상태 테스트
    // return NotificationSuccess([]); // 빈 상태 테스트

    loadMockData(); // 데이터 있는 상태 테스트
    return state;
  }

  void loadMockData() {
    state = NotificationSuccess([
      NotificationModel(
        id: 1,
        title: '사용자 알림',
        description: '알림은 여기에 표시됩니다. 간격을 유의하여 만들어 주세요 최대 두줄이 표시됩니다.',
        timeAgo: '방금 전',
      ),
      NotificationModel(
        id: 2,
        title: '사용자 알림',
        description: '알림은 여기에 표시됩니다. 간격을 유의하여 만들어 주세요 최대 두줄이 표시됩니다.',
        timeAgo: '방금 전',
      ),
    ]);
  }

  void setEmpty() {
    state = NotificationSuccess([]);
  }

  void setError() {
    state = NotificationError("서비스 이용이 원활하지 않아요");
  }
}

final notificationListProvider =
    NotifierProvider<NotificationListViewModel, NotificationUiState>(() {
      return NotificationListViewModel();
    });
