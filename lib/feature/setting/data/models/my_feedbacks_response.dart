import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_feedbacks_response.freezed.dart';
part 'my_feedbacks_response.g.dart';

@freezed
abstract class MyFeedbacksResponse with _$MyFeedbacksResponse {
  const factory MyFeedbacksResponse({
    required String dormitory,
    required String year,
    required List<FeedbackUser> feedbacks,
  }) = _MyFeedbacksResponse;

  factory MyFeedbacksResponse.fromJson(Map<String, dynamic> json) =>
      _$MyFeedbacksResponseFromJson(json);
}

@freezed
abstract class FeedbackUser with _$FeedbackUser {
  const factory FeedbackUser({
    required int id,
    required String profileImage,
    required String nickName,
    required List<String> tags,
  }) = _FeedbackUser;

  factory FeedbackUser.fromJson(Map<String, dynamic> json) =>
      _$FeedbackUserFromJson(json);
}