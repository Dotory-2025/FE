import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_state.freezed.dart';

@freezed
abstract class MyInfoState with _$MyInfoState {
  const factory MyInfoState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    @Default([]) List<MatchingHistoryResponse> matchingHistories,
    @Default([]) List<FeedbackHistoryResponse> feedbackHistories,
  }) = _MyInfoState;
}
