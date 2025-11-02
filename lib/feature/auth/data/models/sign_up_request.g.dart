// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) =>
    _SignUpRequest(
      email: json['email'] as String,
      nickName: json['nickName'] as String,
      studentNumber: (json['studentNumber'] as num).toInt(),
      dormitory: json['dormitory'] as String,
      gender: json['gender'] as String,
      routine: (json['routine'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SignUpRequestToJson(_SignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'nickName': instance.nickName,
      'studentNumber': instance.studentNumber,
      'dormitory': instance.dormitory,
      'gender': instance.gender,
      'routine': instance.routine,
    };
