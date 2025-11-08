// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_message_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupMessageDetailResponse _$GroupMessageDetailResponseFromJson(
  Map<String, dynamic> json,
) => _GroupMessageDetailResponse(
  id: (json['id'] as num).toInt(),
  roomName: json['roomName'] as String,
  profileImage: json['profileImage'] as String,
  dormitory: json['dormitory'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  messages: (json['messages'] as List<dynamic>)
      .map((e) => GroupChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupMessageDetailResponseToJson(
  _GroupMessageDetailResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'roomName': instance.roomName,
  'profileImage': instance.profileImage,
  'dormitory': instance.dormitory,
  'tags': instance.tags,
  'messages': instance.messages,
};

_GroupChatMessage _$GroupChatMessageFromJson(Map<String, dynamic> json) =>
    _GroupChatMessage(
      id: (json['id'] as num).toInt(),
      nickName: json['nickName'],
      profileImage: json['profileImage'],
      senderType: $enumDecode(_$SenderTypeEnumMap, json['senderType']),
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      imageUrl: json['imageUrl'] as String?,
      content: json['content'] as String?,
      timeStamp: json['timeStamp'] as String,
    );

Map<String, dynamic> _$GroupChatMessageToJson(_GroupChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickName': instance.nickName,
      'profileImage': instance.profileImage,
      'senderType': _$SenderTypeEnumMap[instance.senderType]!,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'imageUrl': instance.imageUrl,
      'content': instance.content,
      'timeStamp': instance.timeStamp,
    };

const _$SenderTypeEnumMap = {
  SenderType.me: 'me',
  SenderType.opponent: 'opponent',
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
};
