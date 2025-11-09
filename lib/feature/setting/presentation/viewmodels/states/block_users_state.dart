import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_users_state.freezed.dart';

@freezed
abstract class BlockUsersState with _$BlockUsersState {
  const factory BlockUsersState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    @Default([]) List<BlockUsersResponse> blockUsers,
  }) = _BlcokUsersState;
}
