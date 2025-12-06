import 'dart:convert';

import 'package:dotori/feature/notification/data/models/invitation_response.dart';
import 'package:dotori/feature/notification/data/models/notification_response.dart';
import 'package:dotori/feature/notification/domain/repositories/notification_repository.dart';
import 'package:flutter/services.dart' show rootBundle;

class NotificationRepositoryFake implements NotificationRepository {
  @override
  Future<List<NotificationResponse>> getNotifications() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString(
      'assets/mocks/notifications.json',
    );
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => NotificationResponse.fromJson(e)).toList();
  }

  @override
  Future<List<InvitationResponse>> getInvitations() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString(
      'assets/mocks/invitations.json',
    );
    final List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((e) => InvitationResponse.fromJson(e)).toList();
  }
}
