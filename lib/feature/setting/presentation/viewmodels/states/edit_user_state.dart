import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_user_state.freezed.dart';

@freezed
abstract class EditUserState with _$EditUserState {
  const factory EditUserState({
    Uint8List? profileImage,
    Uint8List? croppedProfileImage,
    String? nickName,
    String? dormitory,
  }) = _EditUserState;
}
