// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationResponse _$NotificationResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationResponse(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  timeAgo: json['timeAgo'] as String,
);

Map<String, dynamic> _$NotificationResponseToJson(
  _NotificationResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'timeAgo': instance.timeAgo,
};
