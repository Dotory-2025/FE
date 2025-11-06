import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_users_response.g.dart';
part 'block_users_response.freezed.dart';

@freezed
abstract class BlockUsersResponse with _$BlockUsersResponse {
  const factory BlockUsersResponse({
    required int id,
    required String profileImage,
    required String nickName,
    required String studentNumber,
  }) = _BlockUserResponse;

  factory BlockUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockUsersResponseFromJson(json);
}
