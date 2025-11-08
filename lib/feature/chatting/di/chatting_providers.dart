import 'package:dotori/feature/chatting/data/repositories/chatting_repository_fake.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_direct_message_detail_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_direct_messages_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_group_message_detail_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/get_group_messages_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/mark_as_dm_read_use_case.dart';
import 'package:dotori/feature/chatting/domain/usecases/mark_as_group_read_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chatting_providers.g.dart';

@riverpod
ChattingRepositoryFake chattingRepositoryFake(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake =
      ChattingRepositoryFake();
  ref.onDispose(chattingRepositoryFake.dispose);
  return ChattingRepositoryFake();
}

@riverpod
GetDirectMessagesUseCase getDirectMessagesUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return GetDirectMessagesUseCase(chattingRepositoryFake);
}

@riverpod
GetGroupMessagesUseCase getGroupMessagesUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return GetGroupMessagesUseCase(chattingRepositoryFake);
}

@riverpod
GetDirectMessageDetailUseCase getDirectMessageDetailUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return GetDirectMessageDetailUseCase(chattingRepositoryFake);
}

@riverpod
GetGroupMessageDetailUseCase getGroupMessageDetailUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return GetGroupMessageDetailUseCase(chattingRepositoryFake);
}

@riverpod
MarkAsDmReadUseCase markAsDmReadUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return MarkAsDmReadUseCase(chattingRepositoryFake);
}

@riverpod
MarkAsGroupReadUseCase markAsGroupReadUseCase(Ref ref) {
  final ChattingRepositoryFake chattingRepositoryFake = ref.read(
    chattingRepositoryFakeProvider,
  );
  return MarkAsGroupReadUseCase(chattingRepositoryFake);
}


