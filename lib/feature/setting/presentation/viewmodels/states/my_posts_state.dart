import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_posts_state.freezed.dart';

@freezed
abstract class MyPostsState with _$MyPostsState {
  const factory MyPostsState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    @Default([]) List<MyPostsResponse> myPosts,
  }) = _MyPostsState;
}
