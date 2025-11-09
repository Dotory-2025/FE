// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectMessageResponse _$DirectMessageResponseFromJson(
  Map<String, dynamic> json,
) => _DirectMessageResponse(
  id: (json['id'] as num).toInt(),
  profileImage: json['profileImage'] as String,
  nickName: json['nickName'] as String,
  lastMessage: json['lastMessage'] as String,
  timeStamp: json['timeStamp'] as String,
  isRead: json['isRead'] as bool,
);

Map<String, dynamic> _$DirectMessageResponseToJson(
  _DirectMessageResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'profileImage': instance.profileImage,
  'nickName': instance.nickName,
  'lastMessage': instance.lastMessage,
  'timeStamp': instance.timeStamp,
  'isRead': instance.isRead,
};
