import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';

abstract class ChattingRepository {
  Future<List<DirectMessageResponse>> getDirectMessages();
  Future<DirectMessageDetailResponse> getDirectMessageDetail(int id);
  Stream<List<DirectMessageResponse>> watchDirectMessages();
  Future<void> markAsDmRead(int id);

  Future<List<GroupMessageResponse>> getGroupMessages();
  Future<GroupMessageDetailResponse> getGroupMessageDetailResponse(int id);
  Stream<List<GroupMessageResponse>> watchGroupMessages();
  Future<void> markGroupAsRead(int id);
}