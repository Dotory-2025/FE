import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_history_response.freezed.dart';
part 'feedback_history_response.g.dart';

@freezed
abstract class FeedbackHistoryResponse with _$FeedbackHistoryResponse {
  const factory FeedbackHistoryResponse({
    required String category,
    required int count,
  }) = _FeedbackHistoryResponse;

  factory FeedbackHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackHistoryResponseFromJson(json);
}