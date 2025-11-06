// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matching_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchingHistoryResponse _$MatchingHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _MatchingHistoryResponse(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  dormitory: json['dormitory'] as String,
  semester: json['semester'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$MatchingHistoryResponseToJson(
  _MatchingHistoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'dormitory': instance.dormitory,
  'semester': instance.semester,
  'tags': instance.tags,
};
