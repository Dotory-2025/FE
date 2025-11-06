// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_feedbacks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyFeedbacksResponse _$MyFeedbacksResponseFromJson(Map<String, dynamic> json) =>
    _MyFeedbacksResponse(
      dormitory: json['dormitory'] as String,
      year: json['year'] as String,
      feedbacks: (json['feedbacks'] as List<dynamic>)
          .map((e) => FeedbackUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyFeedbacksResponseToJson(
  _MyFeedbacksResponse instance,
) => <String, dynamic>{
  'dormitory': instance.dormitory,
  'year': instance.year,
  'feedbacks': instance.feedbacks,
};

_FeedbackUser _$FeedbackUserFromJson(Map<String, dynamic> json) =>
    _FeedbackUser(
      id: (json['id'] as num).toInt(),
      profileImage: json['profileImage'] as String,
      nickName: json['nickName'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FeedbackUserToJson(_FeedbackUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'nickName': instance.nickName,
      'tags': instance.tags,
    };
