import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_feedbacks_state.freezed.dart';

@freezed
abstract class MyFeedbacksState with _$MyFeedbacksState {
  const factory MyFeedbacksState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    @Default([]) List<MyFeedbacksResponse> myFeedbacks,
  }) = _MyFeedbacksState;
}
