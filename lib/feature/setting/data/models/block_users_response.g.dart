// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlockUserResponse _$BlockUserResponseFromJson(Map<String, dynamic> json) =>
    _BlockUserResponse(
      id: (json['id'] as num).toInt(),
      profileImage: json['profileImage'] as String,
      nickName: json['nickName'] as String,
      studentNumber: json['studentNumber'] as String,
    );

Map<String, dynamic> _$BlockUserResponseToJson(_BlockUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'nickName': instance.nickName,
      'studentNumber': instance.studentNumber,
    };
