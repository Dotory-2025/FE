import 'dart:typed_data';

import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(UiStatus.idle) UiStatus status,
    String? errorMessage,
    @Default(UiStatus.idle) UiStatus nicknameStatus,
    String? nicknameErrorMessage,
    String? email,
    String? nickName,
    int? studentNumber,
    String? dormitory,
    String? gender,
    Uint8List? profileImage,
    Uint8List? croppedProfileImage,
    /// --- 🧱 프로필 변수 추가

  }) = _AuthState;
}