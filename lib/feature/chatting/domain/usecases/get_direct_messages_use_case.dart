import 'package:dotori/feature/chatting/data/models/direct_message_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class GetDirectMessagesUseCase {
  final ChattingRepository _chattingRepository;
  GetDirectMessagesUseCase(this._chattingRepository);

  Future<List<DirectMessageResponse>> call() async {
    return await _chattingRepository.getDirectMessages();
  }
}