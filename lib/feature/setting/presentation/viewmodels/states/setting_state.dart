import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    MyInfoResponse? myInfo,
  }) = _SettingState;
}
