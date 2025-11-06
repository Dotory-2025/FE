import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_feedbacks_detail_response.freezed.dart';
part 'my_feedbacks_detail_response.g.dart';

@freezed
abstract class MyFeedbacksDetailResponse with _$MyFeedbacksDetailResponse {
  const factory MyFeedbacksDetailResponse({
    required int id,
    required String dormitory,
    required String profileImage,
    required String roomName,
    required String nickName,
    required List<String> tags,
    required List<String> feedbacks,
  }) = _MyFeedbacksDetailResponse;

  factory MyFeedbacksDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MyFeedbacksDetailResponseFromJson(json);
}