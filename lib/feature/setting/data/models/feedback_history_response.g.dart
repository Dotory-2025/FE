// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedbackHistoryResponse _$FeedbackHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _FeedbackHistoryResponse(
  category: json['category'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$FeedbackHistoryResponseToJson(
  _FeedbackHistoryResponse instance,
) => <String, dynamic>{'category': instance.category, 'count': instance.count};
