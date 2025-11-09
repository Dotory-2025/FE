import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/feature/setting/data/models/feedback_history_response.dart';
import 'package:dotori/feature/setting/data/models/matching_history_response.dart';
import 'package:dotori/feature/setting/di/setting_providers.dart';
import 'package:dotori/feature/setting/domain/usecases/get_feedback_history_use_case.dart';
import 'package:dotori/feature/setting/domain/usecases/get_matching_history_use_case.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_info_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_info_view_model.g.dart';

@riverpod
class MyInfoViewModel extends _$MyInfoViewModel {
  @override
  MyInfoState build() {
    return MyInfoState();
  }

  Future<void> getMyInfo() async {
    state = state.copyWith(status: UiStatus.loading);
    try {
      final GetMatchingHistoryUseCase getMatchingHistoryUseCase = ref.read(
        getMatchingHistoryUseCaseProvider,
      );
      final GetFeedbackHistoryUseCase getFeedbackHistoryUseCase = ref.read(
        getFeedbackHistoryUseCaseProvider,
      );
      List<MatchingHistoryResponse> matchingHistories =
          await getMatchingHistoryUseCase.call();
      List<FeedbackHistoryResponse> feedbackHistories =
          await getFeedbackHistoryUseCase.call();
      state = state.copyWith(
        status: UiStatus.success,
        matchingHistories: matchingHistories,
        feedbackHistories: feedbackHistories,
      );
    } catch (e) {
      state = state.copyWith(
        status: UiStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
