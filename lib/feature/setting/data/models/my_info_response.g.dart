// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyInfoResponse _$MyInfoResponseFromJson(Map<String, dynamic> json) =>
    _MyInfoResponse(
      id: (json['id'] as num).toInt(),
      profileImage: json['profileImage'] as String,
      nickName: json['nickName'] as String,
      dormitory: json['dormitory'] as String,
      studentNumber: json['studentNumber'] as String,
      matching: (json['matching'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      routines: (json['routines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MyInfoResponseToJson(_MyInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'nickName': instance.nickName,
      'dormitory': instance.dormitory,
      'studentNumber': instance.studentNumber,
      'matching': instance.matching,
      'rating': instance.rating,
      'routines': instance.routines,
    };
