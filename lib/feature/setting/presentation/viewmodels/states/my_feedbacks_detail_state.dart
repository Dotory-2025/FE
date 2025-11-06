import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_detail_response.dart';
import 'package:dotori/feature/setting/data/models/my_feedbacks_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_feedbacks_detail_state.freezed.dart';

@freezed
abstract class MyFeedbacksDetailState with _$MyFeedbacksDetailState {
  const factory MyFeedbacksDetailState({
    @Default(UiStatus.idle) UiStatus status,
    @Default('') String errorMessage,
    MyFeedbacksDetailResponse? myFeedbackDetail,
  }) = _MyFeedbacksDetailState;
}
