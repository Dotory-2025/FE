// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvitationResponse _$InvitationResponseFromJson(Map<String, dynamic> json) =>
    _InvitationResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      timeAgo: json['timeAgo'] as String,
      type: $enumDecode(_$InvitationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$InvitationResponseToJson(_InvitationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'timeAgo': instance.timeAgo,
      'type': _$InvitationTypeEnumMap[instance.type]!,
    };

const _$InvitationTypeEnumMap = {
  InvitationType.green: 'green',
  InvitationType.blue: 'blue',
  InvitationType.orange: 'orange',
};
