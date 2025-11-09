import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/data/models/group_message_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class GetGroupMessagesUseCase {
  final ChattingRepository _chattingRepository;
  GetGroupMessagesUseCase(this._chattingRepository);

  Future<List<GroupMessageResponse>> call() async {
    return await _chattingRepository.getGroupMessages();
  }
}