import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_posts_response.g.dart';
part 'my_posts_response.freezed.dart';

@freezed
abstract class MyPostsResponse with _$MyPostsResponse {
  const factory MyPostsResponse({
    required int id,
    required String title,
    required String dormitory,
    required String semester,
    required List<String> tags,
    required isRecruiting,
  }) = _MyPostsResponse;

  factory MyPostsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyPostsResponseFromJson(json);
}
