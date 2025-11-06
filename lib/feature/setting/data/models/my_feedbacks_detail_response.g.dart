// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feedbacks_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyFeedbacksDetailResponse _$MyFeedbacksDetailResponseFromJson(
  Map<String, dynamic> json,
) => _MyFeedbacksDetailResponse(
  id: (json['id'] as num).toInt(),
  dormitory: json['dormitory'] as String,
  profileImage: json['profileImage'] as String,
  roomName: json['roomName'] as String,
  nickName: json['nickName'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  feedbacks: (json['feedbacks'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MyFeedbacksDetailResponseToJson(
  _MyFeedbacksDetailResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'dormitory': instance.dormitory,
  'profileImage': instance.profileImage,
  'roomName': instance.roomName,
  'nickName': instance.nickName,
  'tags': instance.tags,
  'feedbacks': instance.feedbacks,
};
