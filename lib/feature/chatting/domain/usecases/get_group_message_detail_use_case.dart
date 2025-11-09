import 'package:dotori/feature/chatting/data/models/group_message_detail_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class GetGroupMessageDetailUseCase {
  final ChattingRepository _chattingRepository;
  GetGroupMessageDetailUseCase(this._chattingRepository);

  Future<GroupMessageDetailResponse> call(int id) async {
    return await _chattingRepository.getGroupMessageDetailResponse(id);
  }
}
