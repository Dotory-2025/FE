import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class GetDirectMessageDetailUseCase {
  final ChattingRepository _chattingRepository;
  GetDirectMessageDetailUseCase(this._chattingRepository);

  Future<DirectMessageDetailResponse> call(int id) async {
    return await _chattingRepository.getDirectMessageDetail(id);
  }
}
