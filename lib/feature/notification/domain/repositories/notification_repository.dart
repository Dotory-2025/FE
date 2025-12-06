import 'package:dotori/feature/notification/data/models/invitation_response.dart';
import 'package:dotori/feature/notification/data/models/notification_response.dart';

abstract class NotificationRepository {
  Future<List<NotificationResponse>> getNotifications();
  Future<List<InvitationResponse>> getInvitations();
}
