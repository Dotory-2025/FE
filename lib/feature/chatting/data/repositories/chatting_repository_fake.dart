import 'dart:async';
import 'dart:convert';
import 'package:dotori/core/utils/custom_logger.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';
import 'package:flutter/services.dart' show rootBundle;

class ChattingRepositoryFake implements ChattingRepository {
  final StreamController<List<DirectMessageResponse>> _dmStreamController =
      StreamController<List<DirectMessageResponse>>.broadcast();
  List<DirectMessageResponse> _cachedDirectMessages = [];

  final StreamController<List<GroupMessageResponse>> _groupStreamController =
      StreamController<List<GroupMessageResponse>>.broadcast();
  List<GroupMessageResponse> _cachedGroupMessages = [];

  ChattingRepositoryFake() {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    // ---- Direct Messages ----
    final dmJson = await rootBundle.loadString(
      'assets/mocks/direct_messages.json',
    );
    final List<dynamic> dmList = json.decode(dmJson);
    _cachedDirectMessages = dmList
        .map((e) => DirectMessageResponse.fromJson(e))
        .toList();
    if (!_dmStreamController.isClosed) {
      _dmStreamController.add(_cachedDirectMessages);
    }
    logger.d('✅ [FAKE CHAT INIT] loaded ${_cachedDirectMessages.length} DMs');

    // ---- Group Messages ----
    final groupJson = await rootBundle.loadString(
      'assets/mocks/group_messages.json',
    );
    final List<dynamic> groupList = json.decode(groupJson);
    _cachedGroupMessages = groupList
        .map((e) => GroupMessageResponse.fromJson(e))
        .toList();
    if (!_dmStreamController.isClosed) {
      _dmStreamController.add(_cachedDirectMessages);
    }
    logger.d('✅ [FAKE CHAT INIT] loaded ${_cachedGroupMessages.length} Groups');
  }

  /// -------------------- DM 관련 --------------------

  @override
  Future<List<DirectMessageResponse>> getDirectMessages() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _cachedDirectMessages;
  }

  @override
  Stream<List<DirectMessageResponse>> watchDirectMessages() =>
      _dmStreamController.stream;

  @override
  Future<void> markAsDmRead(int id) async {
    final index = _cachedDirectMessages.indexWhere((m) => m.id == id);
    if (index == -1) return;

    final updated = _cachedDirectMessages[index].copyWith(isRead: true);
    _cachedDirectMessages[index] = updated;
    _dmStreamController.add(List.of(_cachedDirectMessages));

    logger.d('📬 [FAKE CHAT] direct message $id marked as read');
  }

  /// -------------------- DM 상세 (채팅 내역) --------------------

  @override
  Future<DirectMessageDetailResponse> getDirectMessageDetail(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final path = 'assets/mocks/direct_message_detail_$id.json';
    final jsonString = await rootBundle.loadString(path);
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    final detail = DirectMessageDetailResponse.fromJson(jsonMap);

    logger.d('💬 [FAKE CHAT] loaded message detail for room $id');
    return detail;
  }

  /// -------------------- 그룹 채팅 관련 --------------------

  @override
  Future<List<GroupMessageResponse>> getGroupMessages() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _cachedGroupMessages;
  }

  @override
  Stream<List<GroupMessageResponse>> watchGroupMessages() =>
      _groupStreamController.stream;

  @override
  Future<void> markGroupAsRead(int id) async {
    final index = _cachedGroupMessages.indexWhere((m) => m.id == id);
    if (index == -1) return;

    final updated = _cachedGroupMessages[index].copyWith(isRead: true);
    _cachedGroupMessages[index] = updated;
    _groupStreamController.add(List.of(_cachedGroupMessages));

    logger.d('📬 [FAKE CHAT] group message $id marked as read');
  }

  void dispose() {
    _dmStreamController.close();
    _groupStreamController.close();
  }

  /// -------------------- 그룹 상세 (채팅 내역) --------------------

  @override
  Future<GroupMessageDetailResponse> getGroupMessageDetailResponse(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final path = 'assets/mocks/group_message_detail_$id.json';
    final jsonString = await rootBundle.loadString(path);
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    final detail = GroupMessageDetailResponse.fromJson(jsonMap);

    logger.d('💬 [FAKE CHAT] loaded message group for room $id');
    return detail;
  }

}
