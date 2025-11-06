import 'package:freezed_annotation/freezed_annotation.dart';

part 'matching_history_response.freezed.dart';
part 'matching_history_response.g.dart';

@freezed
abstract class MatchingHistoryResponse with _$MatchingHistoryResponse {
  const factory MatchingHistoryResponse({
    required int id,
    required String title,
    required String dormitory,
    required String semester,
    required List<String> tags,
  }) = _MatchingHistoryResponse;

  factory MatchingHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchingHistoryResponseFromJson(json);
}