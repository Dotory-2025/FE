import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_response.g.dart';
part 'my_info_response.freezed.dart';

@freezed
abstract class MyInfoResponse with _$MyInfoResponse {
  const factory MyInfoResponse({
    required int id,
    required String profileImage,
    required String nickName,
    required String dormitory,
    required String studentNumber,
    required int matching,
    required int rating,
    required List<String> routines,
  }) = _MyInfoResponse;

  factory MyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MyInfoResponseFromJson(json);
}
