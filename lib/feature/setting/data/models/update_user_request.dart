import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.g.dart';
part 'update_user_request.freezed.dart';

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String? nickName,
    required String? dormitory,
    required List<String> routines,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}
