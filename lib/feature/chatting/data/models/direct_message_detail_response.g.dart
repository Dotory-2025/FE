// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_message_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DirectMessageDetailResponse _$DirectMessageDetailResponseFromJson(
  Map<String, dynamic> json,
) => _DirectMessageDetailResponse(
  id: (json['id'] as num).toInt(),
  roomName: json['roomName'] as String?,
  profileImage: json['profileImage'] as String,
  nickName: json['nickName'] as String,
  dormitory: json['dormitory'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  messages: (json['messages'] as List<dynamic>)
      .map((e) => DirectChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DirectMessageDetailResponseToJson(
  _DirectMessageDetailResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'roomName': instance.roomName,
  'profileImage': instance.profileImage,
  'nickName': instance.nickName,
  'dormitory': instance.dormitory,
  'tags': instance.tags,
  'messages': instance.messages,
};

_DirectChatMessage _$DirectChatMessageFromJson(Map<String, dynamic> json) =>
    _DirectChatMessage(
      id: (json['id'] as num).toInt(),
      senderType: $enumDecode(_$SenderTypeEnumMap, json['senderType']),
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      imageUrl: json['imageUrl'] as String?,
      content: json['content'] as String?,
      houseName: json['houseName'] as String?,
      timeStamp: json['timeStamp'] as String,
    );

Map<String, dynamic> _$DirectChatMessageToJson(_DirectChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderType': _$SenderTypeEnumMap[instance.senderType]!,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'imageUrl': instance.imageUrl,
      'content': instance.content,
      'houseName': instance.houseName,
      'timeStamp': instance.timeStamp,
    };

const _$SenderTypeEnumMap = {
  SenderType.me: 'me',
  SenderType.opponent: 'opponent',
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.houseInvite: 'house_invite',
  MessageType.houseInviteReceived: 'house_invite_received',
};
