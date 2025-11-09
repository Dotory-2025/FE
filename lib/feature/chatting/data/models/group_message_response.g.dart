// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupMessageResponse _$GroupMessageResponseFromJson(
  Map<String, dynamic> json,
) => _GroupMessageResponse(
  id: (json['id'] as num).toInt(),
  dormitory: json['dormitory'] as String,
  semester: json['semester'] as String,
  profileImage1: json['profileImage1'] as String,
  profileImage2: json['profileImage2'] as String,
  groupName: json['groupName'] as String,
  headCount: (json['headCount'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  timeStamp: json['timeStamp'] as String,
  isRead: json['isRead'] as bool,
);

Map<String, dynamic> _$GroupMessageResponseToJson(
  _GroupMessageResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'dormitory': instance.dormitory,
  'semester': instance.semester,
  'profileImage1': instance.profileImage1,
  'profileImage2': instance.profileImage2,
  'groupName': instance.groupName,
  'headCount': instance.headCount,
  'tags': instance.tags,
  'timeStamp': instance.timeStamp,
  'isRead': instance.isRead,
};
