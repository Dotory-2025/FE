// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyPostsResponse _$MyPostsResponseFromJson(Map<String, dynamic> json) =>
    _MyPostsResponse(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      dormitory: json['dormitory'] as String,
      semester: json['semester'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isRecruiting: json['isRecruiting'],
    );

Map<String, dynamic> _$MyPostsResponseToJson(_MyPostsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dormitory': instance.dormitory,
      'semester': instance.semester,
      'tags': instance.tags,
      'isRecruiting': instance.isRecruiting,
    };
