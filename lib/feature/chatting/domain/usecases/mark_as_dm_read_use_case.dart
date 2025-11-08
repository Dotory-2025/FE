import 'package:dotori/feature/chatting/data/models/direct_message_detail_response.dart';
import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class MarkAsDmReadUseCase {
  final ChattingRepository _chattingRepository;
  MarkAsDmReadUseCase(this._chattingRepository);

  Future<void> call(int id) async {
    return await _chattingRepository.markAsDmRead(id);
  }
}
