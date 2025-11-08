import 'package:dotori/feature/chatting/domain/repositories/chatting_repository.dart';

class MarkAsGroupReadUseCase {
  final ChattingRepository _chattingRepository;
  MarkAsGroupReadUseCase(this._chattingRepository);

  Future<void> call(int id) async {
    return await _chattingRepository.markGroupAsRead(id);
  }
}
